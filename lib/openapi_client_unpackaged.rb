=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.10.1.20200226.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

# Common files
require_relative 'openapi_client/api_client'
require_relative 'openapi_client/api_error'
require_relative 'openapi_client/version'
require_relative 'openapi_client/configuration'

# Models
require_relative 'openapi_client/models/primary_transaction'
require_relative 'openapi_client/models/secondary_transaction'
require_relative 'openapi_client/models/exchange_rate_request'
require_relative 'openapi_client/models/wallet_payment_method'
require_relative 'openapi_client/models/payment_tokenization_request'
require_relative 'openapi_client/models/payment_schedules_request'
require_relative 'openapi_client/models/step_request'
require_relative 'openapi_client/models/step_response'

require_relative 'openapi_client/models/access_token_request'
require_relative 'openapi_client/models/access_token_response'
require_relative 'openapi_client/models/account_info_lookup_request'
require_relative 'openapi_client/models/account_updater_response'
require_relative 'openapi_client/models/account_verification_request'
require_relative 'openapi_client/models/ach_credit_transaction'
require_relative 'openapi_client/models/ach_post_auth_transaction'
require_relative 'openapi_client/models/ach_post_auth_transaction_all_of'
require_relative 'openapi_client/models/ach_pre_auth_transaction'
require_relative 'openapi_client/models/ach_pre_auth_transaction_all_of'
require_relative 'openapi_client/models/ach_recurring_type'
require_relative 'openapi_client/models/ach_response'
require_relative 'openapi_client/models/ach_return_transaction'
require_relative 'openapi_client/models/ach_sale_transaction'
require_relative 'openapi_client/models/ach_void_transaction'
require_relative 'openapi_client/models/acs_response'
require_relative 'openapi_client/models/additional_amount_rate'
require_relative 'openapi_client/models/additional_details'
require_relative 'openapi_client/models/additional_response_data'
require_relative 'openapi_client/models/additional_transaction_details'
require_relative 'openapi_client/models/address'
require_relative 'openapi_client/models/airline'
require_relative 'openapi_client/models/airline_ancillary_service_category'
require_relative 'openapi_client/models/airline_travel_route'
require_relative 'openapi_client/models/ali_pay'
require_relative 'openapi_client/models/ali_pay_payment_method'
require_relative 'openapi_client/models/ali_pay_payment_method_all_of'
require_relative 'openapi_client/models/ali_pay_sale_transaction'
require_relative 'openapi_client/models/ali_pay_sale_transaction_all_of'
require_relative 'openapi_client/models/amount'
require_relative 'openapi_client/models/amount_components'
require_relative 'openapi_client/models/apm_payment_method'
require_relative 'openapi_client/models/apm_payment_method_all_of'
require_relative 'openapi_client/models/apm_sale_transaction'
require_relative 'openapi_client/models/apm_sale_transaction_all_of'
require_relative 'openapi_client/models/authentication_request'
require_relative 'openapi_client/models/authentication_result'
require_relative 'openapi_client/models/authentication_update_request'
require_relative 'openapi_client/models/available_currencies_response'
require_relative 'openapi_client/models/avs_response'
require_relative 'openapi_client/models/bancontact_qr'
require_relative 'openapi_client/models/basic_response'
require_relative 'openapi_client/models/billing'
require_relative 'openapi_client/models/billing_address'
require_relative 'openapi_client/models/car_rental'
require_relative 'openapi_client/models/car_rental_extra_charges'
require_relative 'openapi_client/models/card'
require_relative 'openapi_client/models/card_function'
require_relative 'openapi_client/models/card_info'
require_relative 'openapi_client/models/card_info_lookup_request'
require_relative 'openapi_client/models/card_info_lookup_response'
require_relative 'openapi_client/models/card_verification_request'
require_relative 'openapi_client/models/cardholder_info_response'
require_relative 'openapi_client/models/china_domestic'
require_relative 'openapi_client/models/china_domestic_payment_method'
require_relative 'openapi_client/models/china_domestic_payment_method_all_of'
require_relative 'openapi_client/models/china_pn_r_sale_transaction'
require_relative 'openapi_client/models/china_pn_r_sale_transaction_all_of'
require_relative 'openapi_client/models/client_locale'
require_relative 'openapi_client/models/client_registration'
require_relative 'openapi_client/models/contact'
require_relative 'openapi_client/models/create_payment_token'
require_relative 'openapi_client/models/currency_conversion'
require_relative 'openapi_client/models/currency_conversion_response'
require_relative 'openapi_client/models/customer'
require_relative 'openapi_client/models/customer_address'
require_relative 'openapi_client/models/dcc'
require_relative 'openapi_client/models/dcc_all_of'
require_relative 'openapi_client/models/dcc_exchange_rate_request'
require_relative 'openapi_client/models/dcc_exchange_rate_request_all_of'
require_relative 'openapi_client/models/decrypted_apple_pay'
require_relative 'openapi_client/models/decrypted_apple_pay_wallet_payment_method'
require_relative 'openapi_client/models/decrypted_apple_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/decrypted_google_pay'
require_relative 'openapi_client/models/decrypted_google_pay_wallet_payment_method'
require_relative 'openapi_client/models/decrypted_google_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/decrypted_samsung_pay'
require_relative 'openapi_client/models/decrypted_samsung_pay_wallet_payment_method'
require_relative 'openapi_client/models/decrypted_samsung_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/device'
require_relative 'openapi_client/models/disbursement'
require_relative 'openapi_client/models/disbursement_transaction_type'
require_relative 'openapi_client/models/document'
require_relative 'openapi_client/models/dynamic_pricing'
require_relative 'openapi_client/models/dynamic_pricing_all_of'
require_relative 'openapi_client/models/dynamic_pricing_exchange_rate_request'
require_relative 'openapi_client/models/dynamic_pricing_exchange_rate_request_all_of'
require_relative 'openapi_client/models/encrypted_apple_pay'
require_relative 'openapi_client/models/encrypted_apple_pay_header'
require_relative 'openapi_client/models/encrypted_apple_pay_wallet_payment_method'
require_relative 'openapi_client/models/encrypted_apple_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/encrypted_google_pay'
require_relative 'openapi_client/models/encrypted_google_pay_data'
require_relative 'openapi_client/models/encrypted_google_pay_wallet_payment_method'
require_relative 'openapi_client/models/encrypted_google_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/encrypted_samsung_pay'
require_relative 'openapi_client/models/encrypted_samsung_pay_wallet_payment_method'
require_relative 'openapi_client/models/encrypted_samsung_pay_wallet_payment_method_all_of'
require_relative 'openapi_client/models/error'
require_relative 'openapi_client/models/error_details'
require_relative 'openapi_client/models/error_message'
require_relative 'openapi_client/models/error_response'
require_relative 'openapi_client/models/exchange_rate_details'
require_relative 'openapi_client/models/exchange_rate_request'
require_relative 'openapi_client/models/exchange_rate_response'
require_relative 'openapi_client/models/expiration'
require_relative 'openapi_client/models/fraud_address'
require_relative 'openapi_client/models/fraud_order'
require_relative 'openapi_client/models/fraud_order_items'
require_relative 'openapi_client/models/fraud_registration'
require_relative 'openapi_client/models/fraud_registration_card'
require_relative 'openapi_client/models/fraud_registration_device'
require_relative 'openapi_client/models/fraud_registration_device_items'
require_relative 'openapi_client/models/fraud_registration_error'
require_relative 'openapi_client/models/fraud_registration_response'
require_relative 'openapi_client/models/fraud_score'
require_relative 'openapi_client/models/frequency'
require_relative 'openapi_client/models/funding_transaction_type'
require_relative 'openapi_client/models/id_info'
require_relative 'openapi_client/models/industry_specific_extensions'
require_relative 'openapi_client/models/installment_options'
require_relative 'openapi_client/models/integration_step_request'
require_relative 'openapi_client/models/integration_step_response'
require_relative 'openapi_client/models/issuer_response'
require_relative 'openapi_client/models/items'
require_relative 'openapi_client/models/location'
require_relative 'openapi_client/models/lodging'
require_relative 'openapi_client/models/lodging_extra_charges'
require_relative 'openapi_client/models/loyalty'
require_relative 'openapi_client/models/managed_redirect_payment_method'
require_relative 'openapi_client/models/managed_redirect_payment_method_payment_details'
require_relative 'openapi_client/models/managed_redirect_request'
require_relative 'openapi_client/models/managed_redirect_response'
require_relative 'openapi_client/models/managed_redirect_transaction_type'
require_relative 'openapi_client/models/masterpass_wallet_payment_method'
require_relative 'openapi_client/models/masterpass_wallet_payment_method_all_of'
require_relative 'openapi_client/models/mcc6012'
require_relative 'openapi_client/models/merchant'
require_relative 'openapi_client/models/method'
require_relative 'openapi_client/models/order'
require_relative 'openapi_client/models/order_error_response'
require_relative 'openapi_client/models/order_response'
require_relative 'openapi_client/models/pay_pal'
require_relative 'openapi_client/models/pay_pal_payment_method'
require_relative 'openapi_client/models/pay_pal_payment_method_all_of'
require_relative 'openapi_client/models/payment'
require_relative 'openapi_client/models/payment_brand_response'
require_relative 'openapi_client/models/payment_card'
require_relative 'openapi_client/models/payment_card_credit_transaction'
require_relative 'openapi_client/models/payment_card_credit_transaction_all_of'
require_relative 'openapi_client/models/payment_card_disbursement_transaction'
require_relative 'openapi_client/models/payment_card_disbursement_transaction_all_of'
require_relative 'openapi_client/models/payment_card_forced_ticket_transaction'
require_relative 'openapi_client/models/payment_card_forced_ticket_transaction_all_of'
require_relative 'openapi_client/models/payment_card_info_lookup_request'
require_relative 'openapi_client/models/payment_card_info_lookup_request_all_of'
require_relative 'openapi_client/models/payment_card_payer_auth_transaction'
require_relative 'openapi_client/models/payment_card_payer_auth_transaction_all_of'
require_relative 'openapi_client/models/payment_card_payment_method'
require_relative 'openapi_client/models/payment_card_payment_method_all_of'
require_relative 'openapi_client/models/payment_card_payment_token_update_request'
require_relative 'openapi_client/models/payment_card_payment_tokenization_request'
require_relative 'openapi_client/models/payment_card_payment_tokenization_request_all_of'
require_relative 'openapi_client/models/payment_card_pre_auth_transaction'
require_relative 'openapi_client/models/payment_card_pre_auth_transaction_all_of'
require_relative 'openapi_client/models/payment_card_sale_transaction'
require_relative 'openapi_client/models/payment_card_sale_transaction_all_of'
require_relative 'openapi_client/models/payment_card_verification_request'
require_relative 'openapi_client/models/payment_card_verification_request_all_of'
require_relative 'openapi_client/models/payment_device'
require_relative 'openapi_client/models/payment_device_credit_transaction'
require_relative 'openapi_client/models/payment_device_credit_transaction_all_of'
require_relative 'openapi_client/models/payment_device_disbursement_transaction'
require_relative 'openapi_client/models/payment_device_disbursement_transaction_all_of'
require_relative 'openapi_client/models/payment_device_payment_method'
require_relative 'openapi_client/models/payment_device_payment_method_all_of'
require_relative 'openapi_client/models/payment_device_payment_tokenization_request'
require_relative 'openapi_client/models/payment_device_payment_tokenization_request_all_of'
require_relative 'openapi_client/models/payment_device_pre_auth_transaction'
require_relative 'openapi_client/models/payment_device_pre_auth_transaction_all_of'
require_relative 'openapi_client/models/payment_device_sale_transaction'
require_relative 'openapi_client/models/payment_device_sale_transaction_all_of'
require_relative 'openapi_client/models/payment_facilitator'
require_relative 'openapi_client/models/payment_method_details'
require_relative 'openapi_client/models/payment_method_payment_schedules_request'
require_relative 'openapi_client/models/payment_method_payment_schedules_request_all_of'
require_relative 'openapi_client/models/payment_method_type'
require_relative 'openapi_client/models/payment_registration'
require_relative 'openapi_client/models/payment_schedules_error_response'
require_relative 'openapi_client/models/payment_schedules_request'
require_relative 'openapi_client/models/payment_schedules_response'
require_relative 'openapi_client/models/payment_step_request'
require_relative 'openapi_client/models/payment_step_response'
require_relative 'openapi_client/models/payment_token_credit_transaction'
require_relative 'openapi_client/models/payment_token_credit_transaction_all_of'
require_relative 'openapi_client/models/payment_token_details'
require_relative 'openapi_client/models/payment_token_details_all_of'
require_relative 'openapi_client/models/payment_token_disbursement_transaction'
require_relative 'openapi_client/models/payment_token_disbursement_transaction_all_of'
require_relative 'openapi_client/models/payment_token_info_lookup_request'
require_relative 'openapi_client/models/payment_token_info_lookup_request_all_of'
require_relative 'openapi_client/models/payment_token_payment_method'
require_relative 'openapi_client/models/payment_token_payment_method_all_of'
require_relative 'openapi_client/models/payment_token_pre_auth_transaction'
require_relative 'openapi_client/models/payment_token_pre_auth_transaction_all_of'
require_relative 'openapi_client/models/payment_token_sale_transaction'
require_relative 'openapi_client/models/payment_token_sale_transaction_all_of'
require_relative 'openapi_client/models/payment_token_update_response'
require_relative 'openapi_client/models/payment_token_verification_request'
require_relative 'openapi_client/models/payment_token_verification_request_all_of'
require_relative 'openapi_client/models/payment_tokenization_error_response'
require_relative 'openapi_client/models/payment_tokenization_request'
require_relative 'openapi_client/models/payment_tokenization_response'
require_relative 'openapi_client/models/payment_url_detail'
require_relative 'openapi_client/models/payment_url_detail_response'
require_relative 'openapi_client/models/payment_url_error_response'
require_relative 'openapi_client/models/payment_url_request'
require_relative 'openapi_client/models/payment_url_response'
require_relative 'openapi_client/models/payment_url_status'
require_relative 'openapi_client/models/paypal_credit_transaction'
require_relative 'openapi_client/models/paypal_credit_transaction_all_of'
require_relative 'openapi_client/models/phone'
require_relative 'openapi_client/models/post_auth_transaction'
require_relative 'openapi_client/models/post_auth_transaction_all_of'
require_relative 'openapi_client/models/pre_auth_secondary_transaction'
require_relative 'openapi_client/models/pre_auth_secondary_transaction_all_of'
require_relative 'openapi_client/models/primary_transaction'
require_relative 'openapi_client/models/processor_data'
require_relative 'openapi_client/models/provide_detail_integration_step_request'
require_relative 'openapi_client/models/provide_detail_integration_step_request_all_of'
require_relative 'openapi_client/models/provide_detail_integration_step_response'
require_relative 'openapi_client/models/provide_detail_integration_step_response_all_of'
require_relative 'openapi_client/models/provide_detail_payment_step_request'
require_relative 'openapi_client/models/provide_detail_payment_step_request_all_of'
require_relative 'openapi_client/models/provide_detail_payment_step_response'
require_relative 'openapi_client/models/provide_detail_payment_step_response_all_of'
require_relative 'openapi_client/models/purchase_cards'
require_relative 'openapi_client/models/purchase_cards_level2'
require_relative 'openapi_client/models/purchase_cards_level3'
require_relative 'openapi_client/models/purchase_cards_level3_line_items'
require_relative 'openapi_client/models/receipt'
require_relative 'openapi_client/models/receipt_line'
require_relative 'openapi_client/models/receipt_request_info'
require_relative 'openapi_client/models/receiver_info'
require_relative 'openapi_client/models/recurring_payment_details'
require_relative 'openapi_client/models/recurring_payment_details_response'
require_relative 'openapi_client/models/redirect_attributes'
require_relative 'openapi_client/models/referenced_order_payment_schedules_request'
require_relative 'openapi_client/models/referenced_order_payment_schedules_request_all_of'
require_relative 'openapi_client/models/referenced_order_payment_tokenization_request'
require_relative 'openapi_client/models/referenced_order_payment_tokenization_request_all_of'
require_relative 'openapi_client/models/registration_method'
require_relative 'openapi_client/models/response_amount_components'
require_relative 'openapi_client/models/response_amount_components_all_of'
require_relative 'openapi_client/models/response_type'
require_relative 'openapi_client/models/return_transaction'
require_relative 'openapi_client/models/return_transaction_all_of'
require_relative 'openapi_client/models/revolving_options'
require_relative 'openapi_client/models/score_only_request'
require_relative 'openapi_client/models/score_only_response'
require_relative 'openapi_client/models/score_only_response_fraud_score'
require_relative 'openapi_client/models/score_only_response_fraud_score_explanations'
require_relative 'openapi_client/models/secondary_transaction'
require_relative 'openapi_client/models/secure3_d10_authentication_request'
require_relative 'openapi_client/models/secure3_d10_authentication_request_all_of'
require_relative 'openapi_client/models/secure3_d10_authentication_result'
require_relative 'openapi_client/models/secure3_d10_authentication_result_all_of'
require_relative 'openapi_client/models/secure3_d10_authentication_update_request'
require_relative 'openapi_client/models/secure3_d10_authentication_update_request_all_of'
require_relative 'openapi_client/models/secure3_d21_authentication_request'
require_relative 'openapi_client/models/secure3_d21_authentication_request_all_of'
require_relative 'openapi_client/models/secure3_d21_authentication_result'
require_relative 'openapi_client/models/secure3_d21_authentication_result_all_of'
require_relative 'openapi_client/models/secure3_d21_authentication_update_request'
require_relative 'openapi_client/models/secure3_d21_authentication_update_request_all_of'
require_relative 'openapi_client/models/secure3_d_authentication_request'
require_relative 'openapi_client/models/secure3_d_authentication_request_all_of'
require_relative 'openapi_client/models/secure3_d_authentication_response'
require_relative 'openapi_client/models/secure3_d_authentication_response_params'
require_relative 'openapi_client/models/secure3_d_authentication_response_secure3d_method'
require_relative 'openapi_client/models/secure3_d_authentication_result'
require_relative 'openapi_client/models/secure3_d_authentication_result_all_of'
require_relative 'openapi_client/models/secure3_d_authentication_update_request'
require_relative 'openapi_client/models/secure3d_response'
require_relative 'openapi_client/models/sender_info'
require_relative 'openapi_client/models/sepa_credit'
require_relative 'openapi_client/models/sepa_credit_payment_method'
require_relative 'openapi_client/models/sepa_credit_payment_method_all_of'
require_relative 'openapi_client/models/sepa_credit_transaction'
require_relative 'openapi_client/models/sepa_credit_transaction_all_of'
require_relative 'openapi_client/models/sepa_mandate'
require_relative 'openapi_client/models/sepa_sale'
require_relative 'openapi_client/models/sepa_sale_payment_method'
require_relative 'openapi_client/models/sepa_sale_payment_method_all_of'
require_relative 'openapi_client/models/sepa_sale_transaction'
require_relative 'openapi_client/models/sepa_sale_transaction_all_of'
require_relative 'openapi_client/models/ship_to_address'
require_relative 'openapi_client/models/shipping'
require_relative 'openapi_client/models/soft_descriptor'
require_relative 'openapi_client/models/split_shipment'
require_relative 'openapi_client/models/stand_in_details'
require_relative 'openapi_client/models/standin_response_details'
require_relative 'openapi_client/models/stored_credential'
require_relative 'openapi_client/models/sub_merchant_data'
require_relative 'openapi_client/models/sub_merchant_split'
require_relative 'openapi_client/models/tele_check_ach_payment_method'
require_relative 'openapi_client/models/tele_check_ach_payment_method_ach_bill_to'
require_relative 'openapi_client/models/tele_check_cbp_payment_method'
require_relative 'openapi_client/models/tele_check_ica_payment_method'
require_relative 'openapi_client/models/tele_check_ica_payment_method_all_of'
require_relative 'openapi_client/models/transaction_error_response'
require_relative 'openapi_client/models/transaction_origin'
require_relative 'openapi_client/models/transaction_response'
require_relative 'openapi_client/models/transaction_type'
require_relative 'openapi_client/models/union_pay_authentication_request'
require_relative 'openapi_client/models/union_pay_authentication_request_all_of'
require_relative 'openapi_client/models/union_pay_authentication_update_request'
require_relative 'openapi_client/models/union_pay_authentication_update_request_all_of'
require_relative 'openapi_client/models/update_payment_token'
require_relative 'openapi_client/models/use_payment_token'
require_relative 'openapi_client/models/verification3ds'
require_relative 'openapi_client/models/verification_avs'
require_relative 'openapi_client/models/verification_cvv'
require_relative 'openapi_client/models/void_pre_auth_transactions'
require_relative 'openapi_client/models/void_transaction'
require_relative 'openapi_client/models/void_transaction_all_of'
require_relative 'openapi_client/models/wallet_pre_auth_transaction'
require_relative 'openapi_client/models/wallet_pre_auth_transaction_all_of'
require_relative 'openapi_client/models/wallet_sale_transaction'
require_relative 'openapi_client/models/wallet_sale_transaction_all_of'

# APIs
require_relative 'openapi_client/api/authentication_api'
require_relative 'openapi_client/api/currency_conversion_api'
require_relative 'openapi_client/api/fraud_detect_api'
require_relative 'openapi_client/api/information_lookup_api'
require_relative 'openapi_client/api/order_api'
require_relative 'openapi_client/api/payment_api'
require_relative 'openapi_client/api/payment_schedules_api'
require_relative 'openapi_client/api/payment_token_api'
require_relative 'openapi_client/api/payment_url_api'
require_relative 'openapi_client/api/verification_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
