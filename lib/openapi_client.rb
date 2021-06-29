=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.3.0.20210608.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/acs_response'
require 'openapi_client/models/avs_response'
require 'openapi_client/models/access_token_request'
require 'openapi_client/models/access_token_response'
require 'openapi_client/models/account_info_lookup_request'
require 'openapi_client/models/account_updater_response'
require 'openapi_client/models/account_verification_request'
require 'openapi_client/models/ach_credit_transaction'
require 'openapi_client/models/ach_post_auth_transaction'
require 'openapi_client/models/ach_post_auth_transaction_all_of'
require 'openapi_client/models/ach_pre_auth_transaction'
require 'openapi_client/models/ach_pre_auth_transaction_all_of'
require 'openapi_client/models/ach_recurring_type'
require 'openapi_client/models/ach_response'
require 'openapi_client/models/ach_return_transaction'
require 'openapi_client/models/ach_sale_transaction'
require 'openapi_client/models/ach_void_transaction'
require 'openapi_client/models/additional_amount_rate'
require 'openapi_client/models/additional_details'
require 'openapi_client/models/additional_transaction_details'
require 'openapi_client/models/address'
require 'openapi_client/models/airline'
require 'openapi_client/models/airline_ancillary_service_category'
require 'openapi_client/models/airline_travel_route'
require 'openapi_client/models/ali_pay'
require 'openapi_client/models/ali_pay_payment_method'
require 'openapi_client/models/ali_pay_payment_method_all_of'
require 'openapi_client/models/ali_pay_sale_transaction'
require 'openapi_client/models/ali_pay_sale_transaction_all_of'
require 'openapi_client/models/amount'
require 'openapi_client/models/amount_components'
require 'openapi_client/models/apm_payment_method'
require 'openapi_client/models/apm_payment_method_all_of'
require 'openapi_client/models/apm_sale_transaction'
require 'openapi_client/models/apm_sale_transaction_all_of'
require 'openapi_client/models/authentication_request'
require 'openapi_client/models/authentication_result'
require 'openapi_client/models/authentication_update_request'
require 'openapi_client/models/available_currencies_response'
require 'openapi_client/models/bancontact_qr'
require 'openapi_client/models/basic_response'
require 'openapi_client/models/billing'
require 'openapi_client/models/billing_address'
require 'openapi_client/models/car_rental'
require 'openapi_client/models/car_rental_extra_charges'
require 'openapi_client/models/card'
require 'openapi_client/models/card_function'
require 'openapi_client/models/card_info'
require 'openapi_client/models/card_info_lookup_request'
require 'openapi_client/models/card_info_lookup_response'
require 'openapi_client/models/card_verification_request'
require 'openapi_client/models/cardholder_info_response'
require 'openapi_client/models/china_domestic'
require 'openapi_client/models/china_domestic_payment_method'
require 'openapi_client/models/china_domestic_payment_method_all_of'
require 'openapi_client/models/china_pn_r_sale_transaction'
require 'openapi_client/models/china_pn_r_sale_transaction_all_of'
require 'openapi_client/models/client_locale'
require 'openapi_client/models/client_registration'
require 'openapi_client/models/contact'
require 'openapi_client/models/create_payment_token'
require 'openapi_client/models/currency_conversion'
require 'openapi_client/models/currency_conversion_response'
require 'openapi_client/models/customer'
require 'openapi_client/models/customer_address'
require 'openapi_client/models/dcc_exchange_rate_request'
require 'openapi_client/models/dcc_exchange_rate_request_all_of'
require 'openapi_client/models/dcc'
require 'openapi_client/models/dcc_all_of'
require 'openapi_client/models/decrypted_apple_pay'
require 'openapi_client/models/decrypted_apple_pay_wallet_payment_method'
require 'openapi_client/models/decrypted_apple_pay_wallet_payment_method_all_of'
require 'openapi_client/models/decrypted_google_pay'
require 'openapi_client/models/decrypted_google_pay_wallet_payment_method'
require 'openapi_client/models/decrypted_google_pay_wallet_payment_method_all_of'
require 'openapi_client/models/decrypted_samsung_pay'
require 'openapi_client/models/decrypted_samsung_pay_wallet_payment_method'
require 'openapi_client/models/decrypted_samsung_pay_wallet_payment_method_all_of'
require 'openapi_client/models/device'
require 'openapi_client/models/disbursement'
require 'openapi_client/models/disbursement_transaction_type'
require 'openapi_client/models/document'
require 'openapi_client/models/dynamic_pricing'
require 'openapi_client/models/dynamic_pricing_all_of'
require 'openapi_client/models/dynamic_pricing_exchange_rate_request'
require 'openapi_client/models/dynamic_pricing_exchange_rate_request_all_of'
require 'openapi_client/models/encrypted_apple_pay'
require 'openapi_client/models/encrypted_apple_pay_header'
require 'openapi_client/models/encrypted_apple_pay_wallet_payment_method'
require 'openapi_client/models/encrypted_apple_pay_wallet_payment_method_all_of'
require 'openapi_client/models/encrypted_google_pay'
require 'openapi_client/models/encrypted_google_pay_data'
require 'openapi_client/models/encrypted_google_pay_wallet_payment_method'
require 'openapi_client/models/encrypted_google_pay_wallet_payment_method_all_of'
require 'openapi_client/models/encrypted_samsung_pay'
require 'openapi_client/models/encrypted_samsung_pay_wallet_payment_method'
require 'openapi_client/models/encrypted_samsung_pay_wallet_payment_method_all_of'
require 'openapi_client/models/error'
require 'openapi_client/models/error_details'
require 'openapi_client/models/error_message'
require 'openapi_client/models/error_response'
require 'openapi_client/models/exchange_rate_details'
require 'openapi_client/models/exchange_rate_request'
require 'openapi_client/models/exchange_rate_response'
require 'openapi_client/models/expiration'
require 'openapi_client/models/fraud_address'
require 'openapi_client/models/fraud_order'
require 'openapi_client/models/fraud_order_items'
require 'openapi_client/models/fraud_registration'
require 'openapi_client/models/fraud_registration_card'
require 'openapi_client/models/fraud_registration_device'
require 'openapi_client/models/fraud_registration_device_items'
require 'openapi_client/models/fraud_registration_error'
require 'openapi_client/models/fraud_registration_response'
require 'openapi_client/models/fraud_score'
require 'openapi_client/models/frequency'
require 'openapi_client/models/funding_transaction_type'
require 'openapi_client/models/id_info'
require 'openapi_client/models/industry_specific_extensions'
require 'openapi_client/models/installment_options'
require 'openapi_client/models/issuer_response'
require 'openapi_client/models/items'
require 'openapi_client/models/location'
require 'openapi_client/models/lodging'
require 'openapi_client/models/lodging_extra_charges'
require 'openapi_client/models/loyalty'
require 'openapi_client/models/masterpass_wallet_payment_method'
require 'openapi_client/models/masterpass_wallet_payment_method_all_of'
require 'openapi_client/models/mcc6012'
require 'openapi_client/models/merchant'
require 'openapi_client/models/method'
require 'openapi_client/models/order'
require 'openapi_client/models/order_error_response'
require 'openapi_client/models/order_response'
require 'openapi_client/models/pay_pal'
require 'openapi_client/models/pay_pal_payment_method'
require 'openapi_client/models/pay_pal_payment_method_all_of'
require 'openapi_client/models/payment'
require 'openapi_client/models/payment_brand_response'
require 'openapi_client/models/payment_card'
require 'openapi_client/models/payment_card_credit_transaction'
require 'openapi_client/models/payment_card_credit_transaction_all_of'
require 'openapi_client/models/payment_card_disbursement_transaction'
require 'openapi_client/models/payment_card_disbursement_transaction_all_of'
require 'openapi_client/models/payment_card_forced_ticket_transaction'
require 'openapi_client/models/payment_card_forced_ticket_transaction_all_of'
require 'openapi_client/models/payment_card_info_lookup_request'
require 'openapi_client/models/payment_card_info_lookup_request_all_of'
require 'openapi_client/models/payment_card_payer_auth_transaction'
require 'openapi_client/models/payment_card_payer_auth_transaction_all_of'
require 'openapi_client/models/payment_card_payment_method'
require 'openapi_client/models/payment_card_payment_method_all_of'
require 'openapi_client/models/payment_card_payment_token_update_request'
require 'openapi_client/models/payment_card_payment_tokenization_request'
require 'openapi_client/models/payment_card_payment_tokenization_request_all_of'
require 'openapi_client/models/payment_card_pre_auth_transaction'
require 'openapi_client/models/payment_card_pre_auth_transaction_all_of'
require 'openapi_client/models/payment_card_sale_transaction'
require 'openapi_client/models/payment_card_sale_transaction_all_of'
require 'openapi_client/models/payment_card_verification_request'
require 'openapi_client/models/payment_card_verification_request_all_of'
require 'openapi_client/models/payment_device'
require 'openapi_client/models/payment_device_credit_transaction'
require 'openapi_client/models/payment_device_credit_transaction_all_of'
require 'openapi_client/models/payment_device_disbursement_transaction'
require 'openapi_client/models/payment_device_disbursement_transaction_all_of'
require 'openapi_client/models/payment_device_payment_method'
require 'openapi_client/models/payment_device_payment_method_all_of'
require 'openapi_client/models/payment_device_payment_tokenization_request'
require 'openapi_client/models/payment_device_payment_tokenization_request_all_of'
require 'openapi_client/models/payment_device_pre_auth_transaction'
require 'openapi_client/models/payment_device_pre_auth_transaction_all_of'
require 'openapi_client/models/payment_device_sale_transaction'
require 'openapi_client/models/payment_device_sale_transaction_all_of'
require 'openapi_client/models/payment_facilitator'
require 'openapi_client/models/payment_method_details'
require 'openapi_client/models/payment_method_payment_schedules_request'
require 'openapi_client/models/payment_method_payment_schedules_request_all_of'
require 'openapi_client/models/payment_method_type'
require 'openapi_client/models/payment_registration'
require 'openapi_client/models/payment_schedules_error_response'
require 'openapi_client/models/payment_schedules_request'
require 'openapi_client/models/payment_schedules_response'
require 'openapi_client/models/payment_step_request'
require 'openapi_client/models/payment_step_response'
require 'openapi_client/models/payment_token_credit_transaction'
require 'openapi_client/models/payment_token_credit_transaction_all_of'
require 'openapi_client/models/payment_token_details'
require 'openapi_client/models/payment_token_details_all_of'
require 'openapi_client/models/payment_token_disbursement_transaction'
require 'openapi_client/models/payment_token_disbursement_transaction_all_of'
require 'openapi_client/models/payment_token_info_lookup_request'
require 'openapi_client/models/payment_token_info_lookup_request_all_of'
require 'openapi_client/models/payment_token_payment_method'
require 'openapi_client/models/payment_token_payment_method_all_of'
require 'openapi_client/models/payment_token_pre_auth_transaction'
require 'openapi_client/models/payment_token_pre_auth_transaction_all_of'
require 'openapi_client/models/payment_token_sale_transaction'
require 'openapi_client/models/payment_token_sale_transaction_all_of'
require 'openapi_client/models/payment_token_update_response'
require 'openapi_client/models/payment_token_verification_request'
require 'openapi_client/models/payment_token_verification_request_all_of'
require 'openapi_client/models/payment_tokenization_error_response'
require 'openapi_client/models/payment_tokenization_request'
require 'openapi_client/models/payment_tokenization_response'
require 'openapi_client/models/payment_url_detail'
require 'openapi_client/models/payment_url_detail_response'
require 'openapi_client/models/payment_url_error_response'
require 'openapi_client/models/payment_url_request'
require 'openapi_client/models/payment_url_response'
require 'openapi_client/models/payment_url_status'
require 'openapi_client/models/paypal_credit_transaction'
require 'openapi_client/models/paypal_credit_transaction_all_of'
require 'openapi_client/models/phone'
require 'openapi_client/models/post_auth_transaction'
require 'openapi_client/models/post_auth_transaction_all_of'
require 'openapi_client/models/pre_auth_secondary_transaction'
require 'openapi_client/models/pre_auth_secondary_transaction_all_of'
require 'openapi_client/models/primary_transaction'
require 'openapi_client/models/processor_data'
require 'openapi_client/models/provide_detail_payment_step_request'
require 'openapi_client/models/provide_detail_payment_step_request_all_of'
require 'openapi_client/models/provide_detail_payment_step_response'
require 'openapi_client/models/provide_detail_payment_step_response_all_of'
require 'openapi_client/models/purchase_cards'
require 'openapi_client/models/purchase_cards_level2'
require 'openapi_client/models/purchase_cards_level3'
require 'openapi_client/models/purchase_cards_level3_line_items'
require 'openapi_client/models/receipt'
require 'openapi_client/models/receipt_line'
require 'openapi_client/models/receipt_request_info'
require 'openapi_client/models/receiver_info'
require 'openapi_client/models/recurring_payment_details'
require 'openapi_client/models/recurring_payment_details_response'
require 'openapi_client/models/referenced_order_payment_schedules_request'
require 'openapi_client/models/referenced_order_payment_schedules_request_all_of'
require 'openapi_client/models/referenced_order_payment_tokenization_request'
require 'openapi_client/models/referenced_order_payment_tokenization_request_all_of'
require 'openapi_client/models/registration_method'
require 'openapi_client/models/response_amount_components'
require 'openapi_client/models/response_amount_components_all_of'
require 'openapi_client/models/response_type'
require 'openapi_client/models/return_transaction'
require 'openapi_client/models/return_transaction_all_of'
require 'openapi_client/models/revolving_options'
require 'openapi_client/models/score_only_request'
require 'openapi_client/models/score_only_response'
require 'openapi_client/models/score_only_response_fraud_score'
require 'openapi_client/models/score_only_response_fraud_score_explanations'
require 'openapi_client/models/secondary_transaction'
require 'openapi_client/models/secure3_d10_authentication_request'
require 'openapi_client/models/secure3_d10_authentication_request_all_of'
require 'openapi_client/models/secure3_d10_authentication_result'
require 'openapi_client/models/secure3_d10_authentication_result_all_of'
require 'openapi_client/models/secure3_d10_authentication_update_request'
require 'openapi_client/models/secure3_d10_authentication_update_request_all_of'
require 'openapi_client/models/secure3_d21_authentication_request'
require 'openapi_client/models/secure3_d21_authentication_request_all_of'
require 'openapi_client/models/secure3_d21_authentication_result'
require 'openapi_client/models/secure3_d21_authentication_result_all_of'
require 'openapi_client/models/secure3_d21_authentication_update_request'
require 'openapi_client/models/secure3_d21_authentication_update_request_all_of'
require 'openapi_client/models/secure3_d_authentication_request'
require 'openapi_client/models/secure3_d_authentication_request_all_of'
require 'openapi_client/models/secure3_d_authentication_response'
require 'openapi_client/models/secure3_d_authentication_response_params'
require 'openapi_client/models/secure3_d_authentication_response_secure3d_method'
require 'openapi_client/models/secure3_d_authentication_result'
require 'openapi_client/models/secure3_d_authentication_result_all_of'
require 'openapi_client/models/secure3_d_authentication_update_request'
require 'openapi_client/models/secure3d_response'
require 'openapi_client/models/sender_info'
require 'openapi_client/models/sepa_credit'
require 'openapi_client/models/sepa_credit_payment_method'
require 'openapi_client/models/sepa_credit_payment_method_all_of'
require 'openapi_client/models/sepa_credit_transaction'
require 'openapi_client/models/sepa_credit_transaction_all_of'
require 'openapi_client/models/sepa_mandate'
require 'openapi_client/models/sepa_sale'
require 'openapi_client/models/sepa_sale_payment_method'
require 'openapi_client/models/sepa_sale_payment_method_all_of'
require 'openapi_client/models/sepa_sale_transaction'
require 'openapi_client/models/sepa_sale_transaction_all_of'
require 'openapi_client/models/ship_to_address'
require 'openapi_client/models/shipping'
require 'openapi_client/models/soft_descriptor'
require 'openapi_client/models/split_shipment'
require 'openapi_client/models/stand_in_details'
require 'openapi_client/models/standin_response_details'
require 'openapi_client/models/step_request'
require 'openapi_client/models/step_response'
require 'openapi_client/models/stored_credential'
require 'openapi_client/models/sub_merchant_data'
require 'openapi_client/models/sub_merchant_split'
require 'openapi_client/models/tele_check_ach_payment_method'
require 'openapi_client/models/tele_check_ach_payment_method_ach_bill_to'
require 'openapi_client/models/tele_check_cbp_payment_method'
require 'openapi_client/models/tele_check_ica_payment_method'
require 'openapi_client/models/tele_check_ica_payment_method_all_of'
require 'openapi_client/models/transaction_error_response'
require 'openapi_client/models/transaction_origin'
require 'openapi_client/models/transaction_response'
require 'openapi_client/models/transaction_type'
require 'openapi_client/models/union_pay_authentication_request'
require 'openapi_client/models/union_pay_authentication_request_all_of'
require 'openapi_client/models/union_pay_authentication_update_request'
require 'openapi_client/models/union_pay_authentication_update_request_all_of'
require 'openapi_client/models/update_payment_token'
require 'openapi_client/models/use_payment_token'
require 'openapi_client/models/verification3ds'
require 'openapi_client/models/verification_avs'
require 'openapi_client/models/verification_cvv'
require 'openapi_client/models/void_pre_auth_transactions'
require 'openapi_client/models/void_transaction'
require 'openapi_client/models/void_transaction_all_of'
require 'openapi_client/models/wallet_payment_method'
require 'openapi_client/models/wallet_pre_auth_transaction'
require 'openapi_client/models/wallet_pre_auth_transaction_all_of'
require 'openapi_client/models/wallet_sale_transaction'
require 'openapi_client/models/wallet_sale_transaction_all_of'

# APIs
require 'openapi_client/api/authentication_api'
require 'openapi_client/api/currency_conversion_api'
require 'openapi_client/api/fraud_detect_api'
require 'openapi_client/api/information_lookup_api'
require 'openapi_client/api/order_api'
require 'openapi_client/api/payment_api'
require 'openapi_client/api/payment_schedules_api'
require 'openapi_client/api/payment_token_api'
require 'openapi_client/api/payment_url_api'
require 'openapi_client/api/verification_api'

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
