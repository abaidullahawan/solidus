# frozen_string_literal: true

# Implementation class for Cancan gem.  Instead of overriding this class, consider adding new permissions
# using the special +register_ability+ method which allows extensions to add their own abilities.
#
# See http://github.com/ryanb/cancan for more details on cancan.
require 'cancan'
module Spree
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    attr_reader :user

    # Allows us to go beyond the standard cancan initialize method which makes it difficult for engines to
    # modify the default +Ability+ of an application.  The +ability+ argument must be a class that includes
    # the +CanCan::Ability+ module.  The registered ability should behave properly as a stand-alone class
    # and therefore should be easy to test in isolation.
    def self.register_ability(ability)
      abilities.add(ability)
    end

    def self.remove_ability(ability)
      abilities.delete(ability)
    end

    def initialize(current_user)
      @user = current_user || Spree.user_class.new # guest user (not logged in)
      if @user.has_spree_role?('admin')
        activate_permission_sets
        register_extension_abilities
      elsif @user.has_spree_role?('seller')
        can :manage, Spree::Classification
        can :manage, Spree::Image
        can :manage, Spree::OptionType
        can :manage, Spree::OptionValue
        can :manage, Spree::Price
        can :manage, Spree::Product
        can :manage, Spree::ProductProperty
        can :manage, Spree::Variant
        can :manage, Spree::Property
        can :manage, Spree::Taxon
        can :manage, Spree::Taxonomy
        can :manage, :pending_posts
        can :manage, :approved_posts
        can :manage, :rejected_posts
      end
    end

    private

    # Before, this was the only way to extend this ability. Permission sets have been added since.
    # It is recommended to use them instead for extension purposes if possible.
    def register_extension_abilities
      Ability.abilities.each do |clazz|
        ability = clazz.send(:new, user)
        merge(ability)
      end
    end

    def activate_permission_sets
      Spree::Config.roles.activate_permissions! self, user
    end
  end
end
