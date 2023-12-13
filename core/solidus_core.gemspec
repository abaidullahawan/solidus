# -*- encoding: utf-8 -*-
# stub: solidus_core 4.2.0.dev ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_core".freeze
  s.version = "4.2.0.dev"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2023-12-07"
  s.description = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze
  s.email = "contact@solidus.io".freeze
  s.files = ["LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/config/solidus_core_manifest.js".freeze, "app/assets/images/logo/solidus.svg".freeze, "app/assets/images/logo/solidus_logo.png".freeze, "app/assets/images/noimage/large.png".freeze, "app/assets/images/noimage/mini.png".freeze, "app/assets/images/noimage/product.png".freeze, "app/assets/images/noimage/small.png".freeze, "app/assets/javascripts/spree.js.erb".freeze, "app/controllers/spree/base_controller.rb".freeze, "app/helpers/spree/base_helper.rb".freeze, "app/helpers/spree/checkout_helper.rb".freeze, "app/helpers/spree/products_helper.rb".freeze, "app/helpers/spree/store_helper.rb".freeze, "app/helpers/spree/taxons_helper.rb".freeze, "app/jobs/spree/promotion_code_batch_job.rb".freeze, "app/mailers/spree/base_mailer.rb".freeze, "app/mailers/spree/carton_mailer.rb".freeze, "app/mailers/spree/order_mailer.rb".freeze, "app/mailers/spree/promotion_code_batch_mailer.rb".freeze, "app/mailers/spree/reimbursement_mailer.rb".freeze, "app/models/concerns/spree/active_storage_adapter.rb".freeze, "app/models/concerns/spree/active_storage_adapter/attachment.rb".freeze, "app/models/concerns/spree/active_storage_adapter/normalization.rb".freeze, "app/models/concerns/spree/adjustment_source.rb".freeze, "app/models/concerns/spree/calculated_adjustments.rb".freeze, "app/models/concerns/spree/default_price.rb".freeze, "app/models/concerns/spree/display_money.rb".freeze, "app/models/concerns/spree/named_type.rb".freeze, "app/models/concerns/spree/ordered_property_value_list.rb".freeze, "app/models/concerns/spree/ransackable_attributes.rb".freeze, "app/models/concerns/spree/soft_deletable.rb".freeze, "app/models/concerns/spree/user_address_book.rb".freeze, "app/models/concerns/spree/user_api_authentication.rb".freeze, "app/models/concerns/spree/user_methods.rb".freeze, "app/models/concerns/spree/user_reporting.rb".freeze, "app/models/spree/ability.rb".freeze, "app/models/spree/address.rb".freeze, "app/models/spree/address/name.rb".freeze, "app/models/spree/address/state_validator.rb".freeze, "app/models/spree/adjustment.rb".freeze, "app/models/spree/adjustment_reason.rb".freeze, "app/models/spree/asset.rb".freeze, "app/models/spree/base.rb".freeze, "app/models/spree/billing_integration.rb".freeze, "app/models/spree/calculator.rb".freeze, "app/models/spree/calculator/default_tax.rb".freeze, "app/models/spree/calculator/distributed_amount.rb".freeze, "app/models/spree/calculator/flat_fee.rb".freeze, "app/models/spree/calculator/flat_percent_item_total.rb".freeze, "app/models/spree/calculator/flat_rate.rb".freeze, "app/models/spree/calculator/flexi_rate.rb".freeze, "app/models/spree/calculator/percent_on_line_item.rb".freeze, "app/models/spree/calculator/returns/default_refund_amount.rb".freeze, "app/models/spree/calculator/shipping/flat_percent_item_total.rb".freeze, "app/models/spree/calculator/shipping/flat_rate.rb".freeze, "app/models/spree/calculator/shipping/flexi_rate.rb".freeze, "app/models/spree/calculator/shipping/per_item.rb".freeze, "app/models/spree/calculator/shipping/price_sack.rb".freeze, "app/models/spree/calculator/tiered_flat_rate.rb".freeze, "app/models/spree/calculator/tiered_percent.rb".freeze, "app/models/spree/carton.rb".freeze, "app/models/spree/classification.rb".freeze, "app/models/spree/country.rb".freeze, "app/models/spree/credit_card.rb".freeze, "app/models/spree/customer_return.rb".freeze, "app/models/spree/distributed_amounts_handler.rb".freeze, "app/models/spree/exchange.rb".freeze, "app/models/spree/fulfilment_changer.rb".freeze, "app/models/spree/gallery/product_gallery.rb".freeze, "app/models/spree/gallery/variant_gallery.rb".freeze, "app/models/spree/image.rb".freeze, "app/models/spree/image/active_storage_attachment.rb".freeze, "app/models/spree/image/paperclip_attachment.rb".freeze, "app/models/spree/inventory_unit.rb".freeze, "app/models/spree/legacy_user.rb".freeze, "app/models/spree/line_item.rb".freeze, "app/models/spree/line_item_action.rb".freeze, "app/models/spree/log_entry.rb".freeze, "app/models/spree/option_type.rb".freeze, "app/models/spree/option_value.rb".freeze, "app/models/spree/option_values_variant.rb".freeze, "app/models/spree/order.rb".freeze, "app/models/spree/order/number_generator.rb".freeze, "app/models/spree/order/payments.rb".freeze, "app/models/spree/order_cancellations.rb".freeze, "app/models/spree/order_contents.rb".freeze, "app/models/spree/order_inventory.rb".freeze, "app/models/spree/order_merger.rb".freeze, "app/models/spree/order_mutex.rb".freeze, "app/models/spree/order_promotion.rb".freeze, "app/models/spree/order_shipping.rb".freeze, "app/models/spree/order_taxation.rb".freeze, "app/models/spree/order_update_attributes.rb".freeze, "app/models/spree/order_updater.rb".freeze, "app/models/spree/payment.rb".freeze, "app/models/spree/payment/cancellation.rb".freeze, "app/models/spree/payment/processing.rb".freeze, "app/models/spree/payment_capture_event.rb".freeze, "app/models/spree/payment_create.rb".freeze, "app/models/spree/payment_method.rb".freeze, "app/models/spree/payment_method/bogus_credit_card.rb".freeze, "app/models/spree/payment_method/check.rb".freeze, "app/models/spree/payment_method/credit_card.rb".freeze, "app/models/spree/payment_method/simple_bogus_credit_card.rb".freeze, "app/models/spree/payment_method/store_credit.rb".freeze, "app/models/spree/payment_source.rb".freeze, "app/models/spree/preference.rb".freeze, "app/models/spree/price.rb".freeze, "app/models/spree/product.rb".freeze, "app/models/spree/product/scopes.rb".freeze, "app/models/spree/product_option_type.rb".freeze, "app/models/spree/product_promotion_rule.rb".freeze, "app/models/spree/product_property.rb".freeze, "app/models/spree/promotion.rb".freeze, "app/models/spree/promotion/actions/create_adjustment.rb".freeze, "app/models/spree/promotion/actions/create_item_adjustments.rb".freeze, "app/models/spree/promotion/actions/create_quantity_adjustments.rb".freeze, "app/models/spree/promotion/actions/free_shipping.rb".freeze, "app/models/spree/promotion/order_adjustments_recalculator.rb".freeze, "app/models/spree/promotion/rules/first_order.rb".freeze, "app/models/spree/promotion/rules/first_repeat_purchase_since.rb".freeze, "app/models/spree/promotion/rules/item_total.rb".freeze, "app/models/spree/promotion/rules/nth_order.rb".freeze, "app/models/spree/promotion/rules/one_use_per_user.rb".freeze, "app/models/spree/promotion/rules/option_value.rb".freeze, "app/models/spree/promotion/rules/product.rb".freeze, "app/models/spree/promotion/rules/store.rb".freeze, "app/models/spree/promotion/rules/taxon.rb".freeze, "app/models/spree/promotion/rules/user.rb".freeze, "app/models/spree/promotion/rules/user_logged_in.rb".freeze, "app/models/spree/promotion/rules/user_role.rb".freeze, "app/models/spree/promotion_action.rb".freeze, "app/models/spree/promotion_category.rb".freeze, "app/models/spree/promotion_chooser.rb".freeze, "app/models/spree/promotion_code.rb".freeze, "app/models/spree/promotion_code/batch_builder.rb".freeze, "app/models/spree/promotion_code_batch.rb".freeze, "app/models/spree/promotion_handler/cart.rb".freeze, "app/models/spree/promotion_handler/coupon.rb".freeze, "app/models/spree/promotion_handler/page.rb".freeze, "app/models/spree/promotion_handler/shipping.rb".freeze, "app/models/spree/promotion_rule.rb".freeze, "app/models/spree/promotion_rule_store.rb".freeze, "app/models/spree/promotion_rule_taxon.rb".freeze, "app/models/spree/promotion_rule_user.rb".freeze, "app/models/spree/property.rb".freeze, "app/models/spree/refund.rb".freeze, "app/models/spree/refund_reason.rb".freeze, "app/models/spree/reimbursement.rb".freeze, "app/models/spree/reimbursement/credit.rb".freeze, "app/models/spree/reimbursement/reimbursement_type_engine.rb".freeze, "app/models/spree/reimbursement/reimbursement_type_validator.rb".freeze, "app/models/spree/reimbursement_performer.rb".freeze, "app/models/spree/reimbursement_tax_calculator.rb".freeze, "app/models/spree/reimbursement_type.rb".freeze, "app/models/spree/reimbursement_type/credit.rb".freeze, "app/models/spree/reimbursement_type/exchange.rb".freeze, "app/models/spree/reimbursement_type/original_payment.rb".freeze, "app/models/spree/reimbursement_type/reimbursement_helpers.rb".freeze, "app/models/spree/reimbursement_type/store_credit.rb".freeze, "app/models/spree/return_authorization.rb".freeze, "app/models/spree/return_item.rb".freeze, "app/models/spree/return_item/eligibility_validator/base_validator.rb".freeze, "app/models/spree/return_item/eligibility_validator/default.rb".freeze, "app/models/spree/return_item/eligibility_validator/inventory_shipped.rb".freeze, "app/models/spree/return_item/eligibility_validator/no_reimbursements.rb".freeze, "app/models/spree/return_item/eligibility_validator/order_completed.rb".freeze, "app/models/spree/return_item/eligibility_validator/rma_required.rb".freeze, "app/models/spree/return_item/eligibility_validator/time_since_purchase.rb".freeze, "app/models/spree/return_item/exchange_variant_eligibility/same_option_value.rb".freeze, "app/models/spree/return_item/exchange_variant_eligibility/same_product.rb".freeze, "app/models/spree/return_reason.rb".freeze, "app/models/spree/returns_calculator.rb".freeze, "app/models/spree/role.rb".freeze, "app/models/spree/role_user.rb".freeze, "app/models/spree/shipment.rb".freeze, "app/models/spree/shipping_calculator.rb".freeze, "app/models/spree/shipping_category.rb".freeze, "app/models/spree/shipping_manifest.rb".freeze, "app/models/spree/shipping_method.rb".freeze, "app/models/spree/shipping_method_category.rb".freeze, "app/models/spree/shipping_method_stock_location.rb".freeze, "app/models/spree/shipping_method_zone.rb".freeze, "app/models/spree/shipping_rate.rb".freeze, "app/models/spree/shipping_rate_tax.rb".freeze, "app/models/spree/state.rb".freeze, "app/models/spree/state_change.rb".freeze, "app/models/spree/stock/allocator/base.rb".freeze, "app/models/spree/stock/allocator/on_hand_first.rb".freeze, "app/models/spree/stock/availability.rb".freeze, "app/models/spree/stock/availability_validator.rb".freeze, "app/models/spree/stock/content_item.rb".freeze, "app/models/spree/stock/differentiator.rb".freeze, "app/models/spree/stock/estimator.rb".freeze, "app/models/spree/stock/inventory_unit_builder.rb".freeze, "app/models/spree/stock/inventory_units_finalizer.rb".freeze, "app/models/spree/stock/inventory_validator.rb".freeze, "app/models/spree/stock/location_filter/active.rb".freeze, "app/models/spree/stock/location_filter/base.rb".freeze, "app/models/spree/stock/location_sorter/base.rb".freeze, "app/models/spree/stock/location_sorter/default_first.rb".freeze, "app/models/spree/stock/location_sorter/unsorted.rb".freeze, "app/models/spree/stock/package.rb".freeze, "app/models/spree/stock/quantifier.rb".freeze, "app/models/spree/stock/shipping_rate_selector.rb".freeze, "app/models/spree/stock/shipping_rate_sorter.rb".freeze, "app/models/spree/stock/simple_coordinator.rb".freeze, "app/models/spree/stock/splitter/backordered.rb".freeze, "app/models/spree/stock/splitter/base.rb".freeze, "app/models/spree/stock/splitter/shipping_category.rb".freeze, "app/models/spree/stock/splitter/weight.rb".freeze, "app/models/spree/stock/splitter_chain.rb".freeze, "app/models/spree/stock_item.rb".freeze, "app/models/spree/stock_location.rb".freeze, "app/models/spree/stock_movement.rb".freeze, "app/models/spree/stock_quantities.rb".freeze, "app/models/spree/store.rb".freeze, "app/models/spree/store_credit.rb".freeze, "app/models/spree/store_credit_category.rb".freeze, "app/models/spree/store_credit_event.rb".freeze, "app/models/spree/store_credit_prioritizer.rb".freeze, "app/models/spree/store_credit_reason.rb".freeze, "app/models/spree/store_credit_type.rb".freeze, "app/models/spree/store_payment_method.rb".freeze, "app/models/spree/store_selector/by_server_name.rb".freeze, "app/models/spree/store_selector/legacy.rb".freeze, "app/models/spree/store_shipping_method.rb".freeze, "app/models/spree/tax/item_tax.rb".freeze, "app/models/spree/tax/order_adjuster.rb".freeze, "app/models/spree/tax/order_tax.rb".freeze, "app/models/spree/tax/tax_helpers.rb".freeze, "app/models/spree/tax/tax_location.rb".freeze, "app/models/spree/tax_calculator/default.rb".freeze, "app/models/spree/tax_calculator/shipping_rate.rb".freeze, "app/models/spree/tax_category.rb".freeze, "app/models/spree/tax_rate.rb".freeze, "app/models/spree/tax_rate_tax_category.rb".freeze, "app/models/spree/taxon.rb".freeze, "app/models/spree/taxon/active_storage_attachment.rb".freeze, "app/models/spree/taxon/paperclip_attachment.rb".freeze, "app/models/spree/taxonomy.rb".freeze, "app/models/spree/taxonomy/active_storage_attachment.rb".freeze, "app/models/spree/taxonomy/paperclip_attachment.rb".freeze, "app/models/spree/unit_cancel.rb".freeze, "app/models/spree/user_address.rb".freeze, "app/models/spree/user_last_url_storer.rb".freeze, "app/models/spree/user_last_url_storer/rules/authentication_rule.rb".freeze, "app/models/spree/user_stock_location.rb".freeze, "app/models/spree/validations/db_maximum_length_validator.rb".freeze, "app/models/spree/variant.rb".freeze, "app/models/spree/variant/price_selector.rb".freeze, "app/models/spree/variant/pricing_options.rb".freeze, "app/models/spree/variant/scopes.rb".freeze, "app/models/spree/variant/vat_price_generator.rb".freeze, "app/models/spree/variant_property_rule.rb".freeze, "app/models/spree/variant_property_rule_condition.rb".freeze, "app/models/spree/variant_property_rule_value.rb".freeze, "app/models/spree/wallet.rb".freeze, "app/models/spree/wallet/add_payment_sources_to_wallet.rb".freeze, "app/models/spree/wallet/default_payment_builder.rb".freeze, "app/models/spree/wallet_payment_source.rb".freeze, "app/models/spree/zone.rb".freeze, "app/models/spree/zone_member.rb".freeze, "app/subscribers/spree/order_mailer_subscriber.rb".freeze, "app/views/layouts/spree/base_mailer.html.erb".freeze, "app/views/spree/carton_mailer/shipped_email.html.erb".freeze, "app/views/spree/carton_mailer/shipped_email.text.erb".freeze, "app/views/spree/order_mailer/cancel_email.html.erb".freeze, "app/views/spree/order_mailer/cancel_email.text.erb".freeze, "app/views/spree/order_mailer/confirm_email.html.erb".freeze, "app/views/spree/order_mailer/confirm_email.text.erb".freeze, "app/views/spree/order_mailer/inventory_cancellation_email.html.erb".freeze, "app/views/spree/order_mailer/inventory_cancellation_email.text.erb".freeze, "app/views/spree/promotion_code_batch_mailer/promotion_code_batch_errored.text.erb".freeze, "app/views/spree/promotion_code_batch_mailer/promotion_code_batch_finished.text.erb".freeze, "app/views/spree/reimbursement_mailer/reimbursement_email.html.erb".freeze, "app/views/spree/reimbursement_mailer/reimbursement_email.text.erb".freeze, "app/views/spree/shared/_base_mailer_footer.html.erb".freeze, "app/views/spree/shared/_base_mailer_header.html.erb".freeze, "app/views/spree/shared/_error_messages.html.erb".freeze, "app/views/spree/test_mailer/test_email.html.erb".freeze, "app/views/spree/test_mailer/test_email.text.erb".freeze, "bin/rails".freeze, "config/i18n-tasks.yml".freeze, "config/initializers/assets.rb".freeze, "config/initializers/friendly_id.rb".freeze, "config/initializers/inflections.rb".freeze, "config/initializers/money.rb".freeze, "config/locales/en.yml".freeze, "db/default/spree/countries.rb".freeze, "db/default/spree/refund_reasons.rb".freeze, "db/default/spree/return_reasons.rb".freeze, "db/default/spree/roles.rb".freeze, "db/default/spree/shipping_categories.rb".freeze, "db/default/spree/states.rb".freeze, "db/default/spree/stock_locations.rb".freeze, "db/default/spree/store_credit.rb".freeze, "db/default/spree/stores.rb".freeze, "db/default/spree/zones.rb".freeze, "db/migrate/20160101010000_solidus_one_four.rb".freeze, "db/migrate/20160420044191_create_spree_wallet_payment_sources.rb".freeze, "db/migrate/20160420181916_migrate_credit_cards_to_wallet_payment_sources.rb".freeze, "db/migrate/20160924135758_remove_is_default_from_prices.rb".freeze, "db/migrate/20161009141333_remove_currency_from_line_items.rb".freeze, "db/migrate/20161014221052_add_available_to_columns_and_remove_display_on_from_payment_methods.rb".freeze, "db/migrate/20161017102621_create_spree_promotion_code_batch.rb".freeze, "db/migrate/20161123154034_add_available_to_users_and_remove_display_on_from_shipping_methods.rb".freeze, "db/migrate/20161129035810_add_index_to_spree_payments_number.rb".freeze, "db/migrate/20170223235001_remove_spree_store_credits_column.rb".freeze, "db/migrate/20170317035819_add_lft_and_rgt_indexes_to_taxons.rb".freeze, "db/migrate/20170319191942_remove_order_id_from_inventory_units.rb".freeze, "db/migrate/20170412103617_transform_tax_rate_category_relation.rb".freeze, "db/migrate/20170422134804_add_roles_unique_constraints.rb".freeze, "db/migrate/20170522143442_add_time_range_to_tax_rate.rb".freeze, "db/migrate/20170608074534_rename_bogus_gateways.rb".freeze, "db/migrate/20170831201542_remove_default_tax_from_spree_zones.rb".freeze, "db/migrate/20180202190713_create_promotion_rule_stores.rb".freeze, "db/migrate/20180202222641_create_store_shipping_methods.rb".freeze, "db/migrate/20180313220213_add_available_locales_to_stores.rb".freeze, "db/migrate/20180322142651_add_amount_remaining_to_store_credit_events.rb".freeze, "db/migrate/20180328172631_add_join_characters_to_promotion_code_batch.rb".freeze, "db/migrate/20180416083007_add_apply_to_all_to_variant_property_rule.rb".freeze, "db/migrate/20180710170104_create_spree_store_credit_reasons_table.rb".freeze, "db/migrate/20190106184413_remove_code_from_spree_promotions.rb".freeze, "db/migrate/20190220093635_drop_spree_store_credit_update_reasons.rb".freeze, "db/migrate/20200320144521_add_default_billng_flag_to_user_addresses.rb".freeze, "db/migrate/20200530111458_add_bcc_email_to_spree_stores.rb".freeze, "db/migrate/20201008213609_add_discontinue_on_to_spree_products.rb".freeze, "db/migrate/20201127212108_add_type_before_removal_to_spree_payment_methods.rb".freeze, "db/migrate/20210122110141_add_name_to_spree_addresses.rb".freeze, "db/migrate/20210312061050_change_column_null_on_prices.rb".freeze, "db/migrate/20210815004823_add_unique_index_to_option_values_variants.rb".freeze, "db/migrate/20220317165036_set_promotions_with_any_policy_to_all_if_possible.rb".freeze, "db/migrate/20220805202442_add_level_to_spree_tax_rates.rb".freeze, "db/migrate/20221123152807_add_shipping_category_to_spree_variants.rb".freeze, "db/migrate/20230321161854_change_column_null_option_values_option_type_id.rb".freeze, "db/migrate/20230322085416_remove_match_policy_from_spree_promotion.rb".freeze, "db/migrate/20230325132905_remove_unused_columns_from_promotion_rules.rb".freeze, "db/migrate/20230325161633_drop_unused_promo_action_line_items.rb".freeze, "db/migrate/20230425103509_remove_taxon_position.rb".freeze, "db/migrate/20230427095534_drop_deprecated_address_id_from_shipments.rb".freeze, "db/seeds.rb".freeze, "lib/generators/solidus/install/app_templates/authentication/custom.rb".freeze, "lib/generators/solidus/install/app_templates/authentication/devise.rb".freeze, "lib/generators/solidus/install/app_templates/authentication/existing.rb".freeze, "lib/generators/solidus/install/app_templates/authentication/none.rb".freeze, "lib/generators/solidus/install/app_templates/frontend/none.rb".freeze, "lib/generators/solidus/install/app_templates/frontend/starter.rb".freeze, "lib/generators/solidus/install/app_templates/payment_method/braintree.rb".freeze, "lib/generators/solidus/install/app_templates/payment_method/none.rb".freeze, "lib/generators/solidus/install/app_templates/payment_method/paypal.rb".freeze, "lib/generators/solidus/install/app_templates/payment_method/stripe.rb".freeze, "lib/generators/solidus/install/install_generator.rb".freeze, "lib/generators/solidus/install/templates/config/initializers/spree.rb.tt".freeze, "lib/generators/solidus/install/templates/vendor/assets/javascripts/spree/backend/all.js".freeze, "lib/generators/solidus/install/templates/vendor/assets/stylesheets/spree/backend/all.css".freeze, "lib/generators/solidus/update/templates/config/initializers/new_solidus_defaults.rb.tt".freeze, "lib/generators/solidus/update/update_generator.rb".freeze, "lib/generators/spree/custom_user/custom_user_generator.rb".freeze, "lib/generators/spree/custom_user/templates/authentication_helpers.rb.tt".freeze, "lib/generators/spree/custom_user/templates/migration.rb.tt".freeze, "lib/generators/spree/dummy/dummy_generator.rb".freeze, "lib/generators/spree/dummy/templates/rails/application.rb.tt".freeze, "lib/generators/spree/dummy/templates/rails/boot.rb".freeze, "lib/generators/spree/dummy/templates/rails/database.yml".freeze, "lib/generators/spree/dummy/templates/rails/routes.rb".freeze, "lib/generators/spree/dummy/templates/rails/script/rails".freeze, "lib/generators/spree/dummy/templates/rails/storage.yml".freeze, "lib/generators/spree/dummy/templates/rails/test.rb".freeze, "lib/solidus/migrations/promotions_with_code_handlers.rb".freeze, "lib/solidus_core.rb".freeze, "lib/spree/app_configuration.rb".freeze, "lib/spree/bus.rb".freeze, "lib/spree/config.rb".freeze, "lib/spree/core.rb".freeze, "lib/spree/core/active_merchant_dependencies.rb".freeze, "lib/spree/core/class_constantizer.rb".freeze, "lib/spree/core/controller_helpers/auth.rb".freeze, "lib/spree/core/controller_helpers/common.rb".freeze, "lib/spree/core/controller_helpers/order.rb".freeze, "lib/spree/core/controller_helpers/payment_parameters.rb".freeze, "lib/spree/core/controller_helpers/pricing.rb".freeze, "lib/spree/core/controller_helpers/search.rb".freeze, "lib/spree/core/controller_helpers/store.rb".freeze, "lib/spree/core/controller_helpers/strong_parameters.rb".freeze, "lib/spree/core/engine.rb".freeze, "lib/spree/core/environment.rb".freeze, "lib/spree/core/environment/calculators.rb".freeze, "lib/spree/core/environment/promotions.rb".freeze, "lib/spree/core/environment_extension.rb".freeze, "lib/spree/core/importer.rb".freeze, "lib/spree/core/importer/order.rb".freeze, "lib/spree/core/importer/product.rb".freeze, "lib/spree/core/permalinks.rb".freeze, "lib/spree/core/product_duplicator.rb".freeze, "lib/spree/core/product_filters.rb".freeze, "lib/spree/core/role_configuration.rb".freeze, "lib/spree/core/search/base.rb".freeze, "lib/spree/core/search/variant.rb".freeze, "lib/spree/core/state_machines.rb".freeze, "lib/spree/core/state_machines/inventory_unit.rb".freeze, "lib/spree/core/state_machines/order.rb".freeze, "lib/spree/core/state_machines/payment.rb".freeze, "lib/spree/core/state_machines/reimbursement.rb".freeze, "lib/spree/core/state_machines/return_authorization.rb".freeze, "lib/spree/core/state_machines/return_item/acceptance_status.rb".freeze, "lib/spree/core/state_machines/return_item/reception_status.rb".freeze, "lib/spree/core/state_machines/shipment.rb".freeze, "lib/spree/core/stock_configuration.rb".freeze, "lib/spree/core/validators/email.rb".freeze, "lib/spree/core/version.rb".freeze, "lib/spree/core/versioned_value.rb".freeze, "lib/spree/deprecation.rb".freeze, "lib/spree/encryptor.rb".freeze, "lib/spree/i18n.rb".freeze, "lib/spree/localized_number.rb".freeze, "lib/spree/mailer_previews/carton_preview.rb".freeze, "lib/spree/mailer_previews/order_preview.rb".freeze, "lib/spree/mailer_previews/reimbursement_preview.rb".freeze, "lib/spree/migration_helpers.rb".freeze, "lib/spree/migrations.rb".freeze, "lib/spree/money.rb".freeze, "lib/spree/permission_sets.rb".freeze, "lib/spree/permission_sets/base.rb".freeze, "lib/spree/permission_sets/configuration_display.rb".freeze, "lib/spree/permission_sets/configuration_management.rb".freeze, "lib/spree/permission_sets/dashboard_display.rb".freeze, "lib/spree/permission_sets/default_customer.rb".freeze, "lib/spree/permission_sets/order_display.rb".freeze, "lib/spree/permission_sets/order_management.rb".freeze, "lib/spree/permission_sets/product_display.rb".freeze, "lib/spree/permission_sets/product_management.rb".freeze, "lib/spree/permission_sets/promotion_display.rb".freeze, "lib/spree/permission_sets/promotion_management.rb".freeze, "lib/spree/permission_sets/restricted_stock_display.rb".freeze, "lib/spree/permission_sets/restricted_stock_management.rb".freeze, "lib/spree/permission_sets/stock_display.rb".freeze, "lib/spree/permission_sets/stock_management.rb".freeze, "lib/spree/permission_sets/super_user.rb".freeze, "lib/spree/permission_sets/user_display.rb".freeze, "lib/spree/permission_sets/user_management.rb".freeze, "lib/spree/permitted_attributes.rb".freeze, "lib/spree/preferences/configuration.rb".freeze, "lib/spree/preferences/persistable.rb".freeze, "lib/spree/preferences/preferable.rb".freeze, "lib/spree/preferences/preferable_class_methods.rb".freeze, "lib/spree/preferences/preference_differentiator.rb".freeze, "lib/spree/preferences/scoped_store.rb".freeze, "lib/spree/preferences/static_model_preferences.rb".freeze, "lib/spree/preferences/statically_configurable.rb".freeze, "lib/spree/preferences/store.rb".freeze, "lib/spree/testing_support/ability_helpers.rb".freeze, "lib/spree/testing_support/authorization_helpers.rb".freeze, "lib/spree/testing_support/blacklist_urls.rb".freeze, "lib/spree/testing_support/bus_helpers.rb".freeze, "lib/spree/testing_support/caching.rb".freeze, "lib/spree/testing_support/capybara_ext.rb".freeze, "lib/spree/testing_support/common_rake.rb".freeze, "lib/spree/testing_support/controller_requests.rb".freeze, "lib/spree/testing_support/dummy_app.rb".freeze, "lib/spree/testing_support/dummy_app/assets/javascripts/spree/backend/all.js".freeze, "lib/spree/testing_support/dummy_app/assets/stylesheets/spree/backend/all.css".freeze, "lib/spree/testing_support/dummy_app/database.yml".freeze, "lib/spree/testing_support/dummy_app/mailer_previews/test_mailer_preview.rb".freeze, "lib/spree/testing_support/dummy_app/migrations.rb".freeze, "lib/spree/testing_support/dummy_app/rake_tasks.rb".freeze, "lib/spree/testing_support/dummy_app/routes.rb".freeze, "lib/spree/testing_support/extension_rake.rb".freeze, "lib/spree/testing_support/factories/address_factory.rb".freeze, "lib/spree/testing_support/factories/adjustment_factory.rb".freeze, "lib/spree/testing_support/factories/adjustment_reason_factory.rb".freeze, "lib/spree/testing_support/factories/calculator_factory.rb".freeze, "lib/spree/testing_support/factories/carton_factory.rb".freeze, "lib/spree/testing_support/factories/country_factory.rb".freeze, "lib/spree/testing_support/factories/credit_card_factory.rb".freeze, "lib/spree/testing_support/factories/customer_return_factory.rb".freeze, "lib/spree/testing_support/factories/image_factory.rb".freeze, "lib/spree/testing_support/factories/inventory_unit_factory.rb".freeze, "lib/spree/testing_support/factories/line_item_factory.rb".freeze, "lib/spree/testing_support/factories/option_type_factory.rb".freeze, "lib/spree/testing_support/factories/option_value_factory.rb".freeze, "lib/spree/testing_support/factories/order_factory.rb".freeze, "lib/spree/testing_support/factories/order_promotion_factory.rb".freeze, "lib/spree/testing_support/factories/payment_factory.rb".freeze, "lib/spree/testing_support/factories/payment_method_factory.rb".freeze, "lib/spree/testing_support/factories/price_factory.rb".freeze, "lib/spree/testing_support/factories/product_factory.rb".freeze, "lib/spree/testing_support/factories/product_option_type_factory.rb".freeze, "lib/spree/testing_support/factories/product_property_factory.rb".freeze, "lib/spree/testing_support/factories/promotion_category_factory.rb".freeze, "lib/spree/testing_support/factories/promotion_code_factory.rb".freeze, "lib/spree/testing_support/factories/promotion_factory.rb".freeze, "lib/spree/testing_support/factories/property_factory.rb".freeze, "lib/spree/testing_support/factories/refund_factory.rb".freeze, "lib/spree/testing_support/factories/refund_reason_factory.rb".freeze, "lib/spree/testing_support/factories/reimbursement_factory.rb".freeze, "lib/spree/testing_support/factories/reimbursement_type_factory.rb".freeze, "lib/spree/testing_support/factories/return_authorization_factory.rb".freeze, "lib/spree/testing_support/factories/return_item_factory.rb".freeze, "lib/spree/testing_support/factories/return_reason_factory.rb".freeze, "lib/spree/testing_support/factories/role_factory.rb".freeze, "lib/spree/testing_support/factories/shipment_factory.rb".freeze, "lib/spree/testing_support/factories/shipping_category_factory.rb".freeze, "lib/spree/testing_support/factories/shipping_method_factory.rb".freeze, "lib/spree/testing_support/factories/shipping_rate_factory.rb".freeze, "lib/spree/testing_support/factories/state_factory.rb".freeze, "lib/spree/testing_support/factories/stock_item_factory.rb".freeze, "lib/spree/testing_support/factories/stock_location_factory.rb".freeze, "lib/spree/testing_support/factories/stock_movement_factory.rb".freeze, "lib/spree/testing_support/factories/stock_package_factory.rb".freeze, "lib/spree/testing_support/factories/store_credit_category_factory.rb".freeze, "lib/spree/testing_support/factories/store_credit_event_factory.rb".freeze, "lib/spree/testing_support/factories/store_credit_factory.rb".freeze, "lib/spree/testing_support/factories/store_credit_reason_factory.rb".freeze, "lib/spree/testing_support/factories/store_credit_type_factory.rb".freeze, "lib/spree/testing_support/factories/store_factory.rb".freeze, "lib/spree/testing_support/factories/tax_category_factory.rb".freeze, "lib/spree/testing_support/factories/tax_rate_factory.rb".freeze, "lib/spree/testing_support/factories/taxon_factory.rb".freeze, "lib/spree/testing_support/factories/taxonomy_factory.rb".freeze, "lib/spree/testing_support/factories/user_factory.rb".freeze, "lib/spree/testing_support/factories/variant_factory.rb".freeze, "lib/spree/testing_support/factories/variant_property_rule_condition_factory.rb".freeze, "lib/spree/testing_support/factories/variant_property_rule_factory.rb".freeze, "lib/spree/testing_support/factories/variant_property_rule_value_factory.rb".freeze, "lib/spree/testing_support/factories/zone_factory.rb".freeze, "lib/spree/testing_support/factory_bot.rb".freeze, "lib/spree/testing_support/fixtures/blank.jpg".freeze, "lib/spree/testing_support/fixtures/file.txt".freeze, "lib/spree/testing_support/flaky.rb".freeze, "lib/spree/testing_support/flash.rb".freeze, "lib/spree/testing_support/job_helpers.rb".freeze, "lib/spree/testing_support/order_walkthrough.rb".freeze, "lib/spree/testing_support/partial_double_verification.rb".freeze, "lib/spree/testing_support/precompiled_assets.rb".freeze, "lib/spree/testing_support/preferences.rb".freeze, "lib/spree/testing_support/rake.rb".freeze, "lib/spree/testing_support/sequences.rb".freeze, "lib/spree/testing_support/shared_examples/gallery.rb".freeze, "lib/spree/testing_support/silence_deprecations.rb".freeze, "lib/spree/testing_support/translations.rb".freeze, "lib/spree/testing_support/url_helpers.rb".freeze, "lib/spree/user_class_handle.rb".freeze, "lib/spree_core.rb".freeze, "lib/tasks/colorado_delivery_fee.rake".freeze, "lib/tasks/payment_method.rake".freeze, "lib/tasks/solidus/delete_prices_with_nil_amount.rake".freeze, "solidus_core.gemspec".freeze, "vendor/assets/javascripts/jquery.payment.js".freeze, "vendor/assets/javascripts/jsuri.js".freeze, "vendor/assets/stylesheets/normalize.css".freeze]
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.post_install_message = "-------------------------------------------------------------\n                Thank you for using Solidus\n-------------------------------------------------------------\nIf this is a fresh install, don't forget to run the Solidus\ninstaller with the following command:\n\n$ bin/rails g solidus:install\n\nIf you are updating Solidus from an older version, please run\nthe following commands to complete the update:\n\n$ bin/rails g solidus:update\n\nPlease, don't forget to look at the CHANGELOG to see what has changed and\nwhether you need to perform other tasks.\n\nhttps://github.com/solidusio/solidus/blob/main/CHANGELOG.md\n\nPlease report any issues at:\n- https://github.com/solidusio/solidus/issues\n- http://slack.solidus.io/\n-------------------------------------------------------------\n".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Essential models, mailers, and classes for the Solidus e-commerce project.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<actionmailer>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<actionpack>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<actionview>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<activejob>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<activemodel>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<railties>.freeze, [">= 7.0", "< 7.1"])
    s.add_runtime_dependency(%q<activemerchant>.freeze, ["~> 1.66"])
    s.add_runtime_dependency(%q<acts_as_list>.freeze, ["< 2.0"])
    s.add_runtime_dependency(%q<awesome_nested_set>.freeze, ["~> 3.3"])
    s.add_runtime_dependency(%q<cancancan>.freeze, [">= 2.2", "< 4.0"])
    s.add_runtime_dependency(%q<carmen>.freeze, ["~> 1.1.0"])
    s.add_runtime_dependency(%q<discard>.freeze, ["~> 1.0"])
    s.add_runtime_dependency(%q<friendly_id>.freeze, ["~> 5.0"])
    s.add_runtime_dependency(%q<image_processing>.freeze, ["~> 1.10"])
    s.add_runtime_dependency(%q<kaminari-activerecord>.freeze, ["~> 1.1"])
    s.add_runtime_dependency(%q<mini_magick>.freeze, ["~> 4.10"])
    s.add_runtime_dependency(%q<monetize>.freeze, ["~> 1.8"])
    s.add_runtime_dependency(%q<kt-paperclip>.freeze, [">= 6.3", "< 8"])
    s.add_runtime_dependency(%q<psych>.freeze, [">= 3.1.0", "< 5.0"])
    s.add_runtime_dependency(%q<ransack>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6"])
    s.add_runtime_dependency(%q<omnes>.freeze, ["~> 0.2.2"])
  else
    s.add_dependency(%q<actionmailer>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<actionpack>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<actionview>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<activejob>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<activemodel>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<activerecord>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<activesupport>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<railties>.freeze, [">= 7.0", "< 7.1"])
    s.add_dependency(%q<activemerchant>.freeze, ["~> 1.66"])
    s.add_dependency(%q<acts_as_list>.freeze, ["< 2.0"])
    s.add_dependency(%q<awesome_nested_set>.freeze, ["~> 3.3"])
    s.add_dependency(%q<cancancan>.freeze, [">= 2.2", "< 4.0"])
    s.add_dependency(%q<carmen>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<discard>.freeze, ["~> 1.0"])
    s.add_dependency(%q<friendly_id>.freeze, ["~> 5.0"])
    s.add_dependency(%q<image_processing>.freeze, ["~> 1.10"])
    s.add_dependency(%q<kaminari-activerecord>.freeze, ["~> 1.1"])
    s.add_dependency(%q<mini_magick>.freeze, ["~> 4.10"])
    s.add_dependency(%q<monetize>.freeze, ["~> 1.8"])
    s.add_dependency(%q<kt-paperclip>.freeze, [">= 6.3", "< 8"])
    s.add_dependency(%q<psych>.freeze, [">= 3.1.0", "< 5.0"])
    s.add_dependency(%q<ransack>.freeze, ["~> 2.0"])
    s.add_dependency(%q<sprockets-rails>.freeze, [">= 0"])
    s.add_dependency(%q<state_machines-activerecord>.freeze, ["~> 0.6"])
    s.add_dependency(%q<omnes>.freeze, ["~> 0.2.2"])
  end
end
