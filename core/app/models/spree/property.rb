# frozen_string_literal: true

module Spree
  class Property < Spree::Base
    has_many :product_properties, dependent: :delete_all, inverse_of: :property
    has_many :products, through: :product_properties

    has_one_attached :logo
    validates :name, :presentation, presence: true

    scope :sorted, -> { order(:name) }

    enum field_type: {
      Details: 'Details',
      Pricing: 'Pricing'
    }, _prefix: true

    after_touch :touch_all_products

    #self.allowed_ransackable_attributes = %w[name field_type]

    private

    def touch_all_products
      products.update_all(updated_at: Time.current)
    end
  end
end
