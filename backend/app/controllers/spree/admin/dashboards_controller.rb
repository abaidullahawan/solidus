# frozen_string_literal: true

module Spree
  module Admin
    class DashboardsController < BaseController
      def home
        @active_users = Spree::User.where.not(confirmed_at: nil).count
        @approved_ads = Spree::Product.where(is_approved: true).count
        @pending_ads = Spree::Product.where(is_approved: [nil, false], is_rejected: [false, nil]).count
        @rejected_ads = Spree::Product.where(is_rejected: true).count
        @products_by_store = Spree::Store.joins(:products).group(:name).count
        @products_by_month = Spree::Product.all.group_by { |product| product.created_at.strftime("%B") }.transform_values(&:count)
      end
    end
  end
end
