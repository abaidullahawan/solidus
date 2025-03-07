# frozen_string_literal: true

module Spree
  class Taxonomy < Spree::Base
    acts_as_list

    validates :name, presence: true
    validates :name, uniqueness: true

    has_many :taxons, inverse_of: :taxonomy
    has_one :root, -> { where parent_id: nil }, class_name: "Spree::Taxon", dependent: :destroy

    after_save :set_name

    default_scope -> { order(position: :asc) }

    #self.allowed_ransackable_attributes = %w[name]

    include ::Spree::Config.taxon_attachment_module
    
    private

    def set_name
      if root
        root.update_columns(
          name: name,
          updated_at: Time.current
        )
      else
        self.root = Spree::Taxon.create!(taxonomy_id: id, name: name)
      end
    end
  end
end
