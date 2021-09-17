# FirstApiClient

Payment Gateway API Specification.
- API version: 21.4.0

## Installation

### Install the gem

```shell
gem install first_data_gateway
```
(for development, run `gem install --dev first_data_gateway` to install the development dependencies)

Then add the gem to your Gemfile:

    gem 'first_data_gateway', '~> 1.13.0'

### Install from Git

Add the following in the Gemfile:

    gem 'first_data_gateway', :git => 'https://github.com/GBSEcom/Ruby.git'

## Getting Started
```ruby
require 'openapi_client'
require 'simple_client'

api_key = "Your API Key here"
api_secret = "Your API Secret here"

credentials = SimpleClient::MerchantCredentials.new(api_key, api_secret)

# For use in production, supply "PROD" as the optional production argument:
# gateway = SimpleClient::Gateway.create(credentials, "PROD");

gateway = SimpleClient::Gateway.create(credentials)

payload = 	"{ 
				\"amount\":{
					\"currency\":\"USD\",
					\"total\":\"12.10\"
				},
				\"paymentMethod\":{
					\"paymentCard\":{
						\"expiryDate\":{
							\"month\":\"12\",
							\"year\":\"21\"
						},
						\"number\":\"5500000000000004\"
					},
					\"type\":\"PAYMENT_CARD\"
				},
				\"transactionType\":\"SALE\"
			}"
result = gateway.primary_payment_transaction(payload: payload)
p JSON.generate(result.to_hash)
```

## Documentation for API Endpoints

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AuthenticationApi* | [**authentication_access_tokens_post**](docs/AuthenticationApi.md#authentication_access_tokens_post) | **POST** /authentication/access-tokens | Generate an access token for user authentication.
*OpenapiClient::CurrencyConversionApi* | [**get_exchange_rate**](docs/CurrencyConversionApi.md#get_exchange_rate) | **POST** /exchange-rates | Generate dynamic currency conversion transactions.
*OpenapiClient::FraudDetectApi* | [**fraud_client_registration_post**](docs/FraudDetectApi.md#fraud_client_registration_post) | **POST** /fraud/client-registration | Client registration for fraud detect transaction.
*OpenapiClient::FraudDetectApi* | [**fraud_payment_registration_post**](docs/FraudDetectApi.md#fraud_payment_registration_post) | **POST** /fraud/payment-registration | Payment registration for fraud detect transaction.
*OpenapiClient::FraudDetectApi* | [**score_only**](docs/FraudDetectApi.md#score_only) | **POST** /fraud/score-only | Score a transaction for fraud.
*OpenapiClient::InformationLookupApi* | [**card_info_lookup**](docs/InformationLookupApi.md#card_info_lookup) | **POST** /card-information | Card information lookup.
*OpenapiClient::InformationLookupApi* | [**lookup_account**](docs/InformationLookupApi.md#lookup_account) | **POST** /account-information | Account information lookup.
*OpenapiClient::OrderApi* | [**order_inquiry**](docs/OrderApi.md#order_inquiry) | **GET** /orders/{order-id} | Retrieve the state of an order.
*OpenapiClient::OrderApi* | [**submit_secondary_transaction_from_order**](docs/OrderApi.md#submit_secondary_transaction_from_order) | **POST** /orders/{order-id} | Perform return or postAuth secondary transactions.
*OpenapiClient::PaymentApi* | [**finalize_secure_transaction**](docs/PaymentApi.md#finalize_secure_transaction) | **PATCH** /payments/{transaction-id} | Update a 3DSecure or UnionPay payment and continue processing.
*OpenapiClient::PaymentApi* | [**submit_primary_transaction**](docs/PaymentApi.md#submit_primary_transaction) | **POST** /payments | Generate a primary transaction.
*OpenapiClient::PaymentApi* | [**submit_secondary_transaction**](docs/PaymentApi.md#submit_secondary_transaction) | **POST** /payments/{transaction-id} | Perform a secondary transaction.
*OpenapiClient::PaymentApi* | [**transaction_inquiry**](docs/PaymentApi.md#transaction_inquiry) | **GET** /payments/{transaction-id} | Retrieve the state of a transaction.
*OpenapiClient::PaymentSchedulesApi* | [**cancel_payment_schedule**](docs/PaymentSchedulesApi.md#cancel_payment_schedule) | **DELETE** /payment-schedules/{order-id} | Cancel a gateway payment schedule.
*OpenapiClient::PaymentSchedulesApi* | [**create_payment_schedule**](docs/PaymentSchedulesApi.md#create_payment_schedule) | **POST** /payment-schedules | Create gateway payment schedule.
*OpenapiClient::PaymentSchedulesApi* | [**inquiry_payment_schedule**](docs/PaymentSchedulesApi.md#inquiry_payment_schedule) | **GET** /payment-schedules/{order-id} | View a gateway payment schedule.
*OpenapiClient::PaymentSchedulesApi* | [**update_payment_schedule**](docs/PaymentSchedulesApi.md#update_payment_schedule) | **PATCH** /payment-schedules/{order-id} | Update a gateway payment schedule.
*OpenapiClient::PaymentTokenApi* | [**create_payment_token**](docs/PaymentTokenApi.md#create_payment_token) | **POST** /payment-tokens | Create a payment token from a payment card.
*OpenapiClient::PaymentTokenApi* | [**delete_payment_token**](docs/PaymentTokenApi.md#delete_payment_token) | **DELETE** /payment-tokens/{token-id} | Delete a payment token.
*OpenapiClient::PaymentTokenApi* | [**get_payment_token_details**](docs/PaymentTokenApi.md#get_payment_token_details) | **GET** /payment-tokens/{token-id} | Get payment card details associated with token.
*OpenapiClient::PaymentTokenApi* | [**update_payment_token**](docs/PaymentTokenApi.md#update_payment_token) | **PATCH** /payment-tokens | Update one or more payment tokens.
*OpenapiClient::PaymentURLApi* | [**create_payment_url**](docs/PaymentURLApi.md#create_payment_url) | **POST** /payment-url | Create a payment URL.
*OpenapiClient::PaymentURLApi* | [**delete_payment_url**](docs/PaymentURLApi.md#delete_payment_url) | **DELETE** /payment-url | Delete a payment URL.
*OpenapiClient::PaymentURLApi* | [**payment_url_detail**](docs/PaymentURLApi.md#payment_url_detail) | **GET** /payment-url | Retrieve the state of payment URL.
*OpenapiClient::VerificationApi* | [**verify_account**](docs/VerificationApi.md#verify_account) | **POST** /account-verification | Verify a payment card or payment token.
*OpenapiClient::VerificationApi* | [**verify_card**](docs/VerificationApi.md#verify_card) | **POST** /card-verification | Verify a payment card.


## Documentation for Models

 - [OpenapiClient::ACSResponse](docs/ACSResponse.md)
 - [OpenapiClient::AVSResponse](docs/AVSResponse.md)
 - [OpenapiClient::AccessTokenRequest](docs/AccessTokenRequest.md)
 - [OpenapiClient::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [OpenapiClient::AccountInfoLookupRequest](docs/AccountInfoLookupRequest.md)
 - [OpenapiClient::AccountUpdaterResponse](docs/AccountUpdaterResponse.md)
 - [OpenapiClient::AccountVerificationRequest](docs/AccountVerificationRequest.md)
 - [OpenapiClient::AchCreditTransaction](docs/AchCreditTransaction.md)
 - [OpenapiClient::AchPostAuthTransaction](docs/AchPostAuthTransaction.md)
 - [OpenapiClient::AchPostAuthTransactionAllOf](docs/AchPostAuthTransactionAllOf.md)
 - [OpenapiClient::AchPreAuthTransaction](docs/AchPreAuthTransaction.md)
 - [OpenapiClient::AchPreAuthTransactionAllOf](docs/AchPreAuthTransactionAllOf.md)
 - [OpenapiClient::AchRecurringType](docs/AchRecurringType.md)
 - [OpenapiClient::AchResponse](docs/AchResponse.md)
 - [OpenapiClient::AchReturnTransaction](docs/AchReturnTransaction.md)
 - [OpenapiClient::AchSaleTransaction](docs/AchSaleTransaction.md)
 - [OpenapiClient::AchVoidTransaction](docs/AchVoidTransaction.md)
 - [OpenapiClient::AdditionalAmountRate](docs/AdditionalAmountRate.md)
 - [OpenapiClient::AdditionalDetails](docs/AdditionalDetails.md)
 - [OpenapiClient::AdditionalTransactionDetails](docs/AdditionalTransactionDetails.md)
 - [OpenapiClient::Address](docs/Address.md)
 - [OpenapiClient::Airline](docs/Airline.md)
 - [OpenapiClient::AirlineAncillaryServiceCategory](docs/AirlineAncillaryServiceCategory.md)
 - [OpenapiClient::AirlineTravelRoute](docs/AirlineTravelRoute.md)
 - [OpenapiClient::AliPay](docs/AliPay.md)
 - [OpenapiClient::AliPayPaymentMethod](docs/AliPayPaymentMethod.md)
 - [OpenapiClient::AliPayPaymentMethodAllOf](docs/AliPayPaymentMethodAllOf.md)
 - [OpenapiClient::AliPaySaleTransaction](docs/AliPaySaleTransaction.md)
 - [OpenapiClient::AliPaySaleTransactionAllOf](docs/AliPaySaleTransactionAllOf.md)
 - [OpenapiClient::Amount](docs/Amount.md)
 - [OpenapiClient::AmountComponents](docs/AmountComponents.md)
 - [OpenapiClient::AuthenticationRequest](docs/AuthenticationRequest.md)
 - [OpenapiClient::AuthenticationResult](docs/AuthenticationResult.md)
 - [OpenapiClient::AuthenticationUpdateRequest](docs/AuthenticationUpdateRequest.md)
 - [OpenapiClient::Background](docs/Background.md)
 - [OpenapiClient::BackgroundColor](docs/BackgroundColor.md)
 - [OpenapiClient::BancontactQR](docs/BancontactQR.md)
 - [OpenapiClient::BasicResponse](docs/BasicResponse.md)
 - [OpenapiClient::Billing](docs/Billing.md)
 - [OpenapiClient::BillingAddress](docs/BillingAddress.md)
 - [OpenapiClient::BlockCard](docs/BlockCard.md)
 - [OpenapiClient::BlockDomain](docs/BlockDomain.md)
 - [OpenapiClient::BlockIPAddress](docs/BlockIPAddress.md)
 - [OpenapiClient::BlockName](docs/BlockName.md)
 - [OpenapiClient::BlockedCardNumber](docs/BlockedCardNumber.md)
 - [OpenapiClient::BlockedItems](docs/BlockedItems.md)
 - [OpenapiClient::Body](docs/Body.md)
 - [OpenapiClient::Borders](docs/Borders.md)
 - [OpenapiClient::BrandingStyleConfigurationRequest](docs/BrandingStyleConfigurationRequest.md)
 - [OpenapiClient::BrandingStyleConfigurationResponse](docs/BrandingStyleConfigurationResponse.md)
 - [OpenapiClient::BrandingStyleConfigurationResult](docs/BrandingStyleConfigurationResult.md)
 - [OpenapiClient::Button](docs/Button.md)
 - [OpenapiClient::CarRental](docs/CarRental.md)
 - [OpenapiClient::CarRentalExtraCharges](docs/CarRentalExtraCharges.md)
 - [OpenapiClient::Card](docs/Card.md)
 - [OpenapiClient::CardFunction](docs/CardFunction.md)
 - [OpenapiClient::CardInfo](docs/CardInfo.md)
 - [OpenapiClient::CardInfoLookupRequest](docs/CardInfoLookupRequest.md)
 - [OpenapiClient::CardInfoLookupResponse](docs/CardInfoLookupResponse.md)
 - [OpenapiClient::CardVerificationRequest](docs/CardVerificationRequest.md)
 - [OpenapiClient::CardholderInfoResponse](docs/CardholderInfoResponse.md)
 - [OpenapiClient::ChinaDomestic](docs/ChinaDomestic.md)
 - [OpenapiClient::ChinaDomesticPaymentMethod](docs/ChinaDomesticPaymentMethod.md)
 - [OpenapiClient::ChinaDomesticPaymentMethodAllOf](docs/ChinaDomesticPaymentMethodAllOf.md)
 - [OpenapiClient::ChinaPnRSaleTransaction](docs/ChinaPnRSaleTransaction.md)
 - [OpenapiClient::ChinaPnRSaleTransactionAllOf](docs/ChinaPnRSaleTransactionAllOf.md)
 - [OpenapiClient::ClassicMode](docs/ClassicMode.md)
 - [OpenapiClient::ClearingDetails](docs/ClearingDetails.md)
 - [OpenapiClient::ClearingElement](docs/ClearingElement.md)
 - [OpenapiClient::ClientLocale](docs/ClientLocale.md)
 - [OpenapiClient::ClientRegistration](docs/ClientRegistration.md)
 - [OpenapiClient::CombinedMode](docs/CombinedMode.md)
 - [OpenapiClient::ConnectMode](docs/ConnectMode.md)
 - [OpenapiClient::Contact](docs/Contact.md)
 - [OpenapiClient::Content](docs/Content.md)
 - [OpenapiClient::CountryProfile](docs/CountryProfile.md)
 - [OpenapiClient::CreatePaymentToken](docs/CreatePaymentToken.md)
 - [OpenapiClient::CurrencyConversion](docs/CurrencyConversion.md)
 - [OpenapiClient::CurrencyConversionResponse](docs/CurrencyConversionResponse.md)
 - [OpenapiClient::Customer](docs/Customer.md)
 - [OpenapiClient::CustomerAddress](docs/CustomerAddress.md)
 - [OpenapiClient::DCCExchangeRateRequest](docs/DCCExchangeRateRequest.md)
 - [OpenapiClient::DCCExchangeRateRequestAllOf](docs/DCCExchangeRateRequestAllOf.md)
 - [OpenapiClient::Dcc](docs/Dcc.md)
 - [OpenapiClient::DccAllOf](docs/DccAllOf.md)
 - [OpenapiClient::DecryptedApplePay](docs/DecryptedApplePay.md)
 - [OpenapiClient::DecryptedApplePayWalletPaymentMethod](docs/DecryptedApplePayWalletPaymentMethod.md)
 - [OpenapiClient::DecryptedApplePayWalletPaymentMethodAllOf](docs/DecryptedApplePayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::DecryptedGooglePay](docs/DecryptedGooglePay.md)
 - [OpenapiClient::DecryptedGooglePayWalletPaymentMethod](docs/DecryptedGooglePayWalletPaymentMethod.md)
 - [OpenapiClient::DecryptedGooglePayWalletPaymentMethodAllOf](docs/DecryptedGooglePayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::DecryptedSamsungPay](docs/DecryptedSamsungPay.md)
 - [OpenapiClient::DecryptedSamsungPayWalletPaymentMethod](docs/DecryptedSamsungPayWalletPaymentMethod.md)
 - [OpenapiClient::DecryptedSamsungPayWalletPaymentMethodAllOf](docs/DecryptedSamsungPayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::DeleteBrandingStyleConfigurationResponse](docs/DeleteBrandingStyleConfigurationResponse.md)
 - [OpenapiClient::Device](docs/Device.md)
 - [OpenapiClient::Disbursement](docs/Disbursement.md)
 - [OpenapiClient::DisbursementTransactionType](docs/DisbursementTransactionType.md)
 - [OpenapiClient::Document](docs/Document.md)
 - [OpenapiClient::DynamicPricing](docs/DynamicPricing.md)
 - [OpenapiClient::DynamicPricingAllOf](docs/DynamicPricingAllOf.md)
 - [OpenapiClient::DynamicPricingExchangeRateRequest](docs/DynamicPricingExchangeRateRequest.md)
 - [OpenapiClient::DynamicPricingExchangeRateRequestAllOf](docs/DynamicPricingExchangeRateRequestAllOf.md)
 - [OpenapiClient::EmailNotificationData](docs/EmailNotificationData.md)
 - [OpenapiClient::EncryptedApplePay](docs/EncryptedApplePay.md)
 - [OpenapiClient::EncryptedApplePayHeader](docs/EncryptedApplePayHeader.md)
 - [OpenapiClient::EncryptedApplePayWalletPaymentMethod](docs/EncryptedApplePayWalletPaymentMethod.md)
 - [OpenapiClient::EncryptedApplePayWalletPaymentMethodAllOf](docs/EncryptedApplePayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::EncryptedGooglePay](docs/EncryptedGooglePay.md)
 - [OpenapiClient::EncryptedGooglePayData](docs/EncryptedGooglePayData.md)
 - [OpenapiClient::EncryptedGooglePayWalletPaymentMethod](docs/EncryptedGooglePayWalletPaymentMethod.md)
 - [OpenapiClient::EncryptedGooglePayWalletPaymentMethodAllOf](docs/EncryptedGooglePayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::EncryptedSamsungPay](docs/EncryptedSamsungPay.md)
 - [OpenapiClient::EncryptedSamsungPayWalletPaymentMethod](docs/EncryptedSamsungPayWalletPaymentMethod.md)
 - [OpenapiClient::EncryptedSamsungPayWalletPaymentMethodAllOf](docs/EncryptedSamsungPayWalletPaymentMethodAllOf.md)
 - [OpenapiClient::EndpointResponse](docs/EndpointResponse.md)
 - [OpenapiClient::Error](docs/Error.md)
 - [OpenapiClient::ErrorDetails](docs/ErrorDetails.md)
 - [OpenapiClient::ErrorMessage](docs/ErrorMessage.md)
 - [OpenapiClient::ErrorResponse](docs/ErrorResponse.md)
 - [OpenapiClient::ExchangeRateDetails](docs/ExchangeRateDetails.md)
 - [OpenapiClient::ExchangeRateRequest](docs/ExchangeRateRequest.md)
 - [OpenapiClient::ExchangeRateResponse](docs/ExchangeRateResponse.md)
 - [OpenapiClient::Expiration](docs/Expiration.md)
 - [OpenapiClient::FontFace](docs/FontFace.md)
 - [OpenapiClient::FontProperties](docs/FontProperties.md)
 - [OpenapiClient::FontWeight](docs/FontWeight.md)
 - [OpenapiClient::Footer](docs/Footer.md)
 - [OpenapiClient::FraudAddress](docs/FraudAddress.md)
 - [OpenapiClient::FraudOrder](docs/FraudOrder.md)
 - [OpenapiClient::FraudOrderItems](docs/FraudOrderItems.md)
 - [OpenapiClient::FraudRegistration](docs/FraudRegistration.md)
 - [OpenapiClient::FraudRegistrationCard](docs/FraudRegistrationCard.md)
 - [OpenapiClient::FraudRegistrationDevice](docs/FraudRegistrationDevice.md)
 - [OpenapiClient::FraudRegistrationDeviceItems](docs/FraudRegistrationDeviceItems.md)
 - [OpenapiClient::FraudRegistrationError](docs/FraudRegistrationError.md)
 - [OpenapiClient::FraudRegistrationResponse](docs/FraudRegistrationResponse.md)
 - [OpenapiClient::FraudScore](docs/FraudScore.md)
 - [OpenapiClient::FraudSettings](docs/FraudSettings.md)
 - [OpenapiClient::FraudSettingsResponse](docs/FraudSettingsResponse.md)
 - [OpenapiClient::Frequency](docs/Frequency.md)
 - [OpenapiClient::FundingTransactionType](docs/FundingTransactionType.md)
 - [OpenapiClient::GenerateCertificateFromCsrResponse](docs/GenerateCertificateFromCsrResponse.md)
 - [OpenapiClient::GenerateCertificateResponse](docs/GenerateCertificateResponse.md)
 - [OpenapiClient::Header](docs/Header.md)
 - [OpenapiClient::Hover](docs/Hover.md)
 - [OpenapiClient::IdInfo](docs/IdInfo.md)
 - [OpenapiClient::IdealSetup](docs/IdealSetup.md)
 - [OpenapiClient::IdealSetupResponse](docs/IdealSetupResponse.md)
 - [OpenapiClient::IndustrySpecificExtensions](docs/IndustrySpecificExtensions.md)
 - [OpenapiClient::InitiateClearingResponse](docs/InitiateClearingResponse.md)
 - [OpenapiClient::InitiateClearingResponseAllOf](docs/InitiateClearingResponseAllOf.md)
 - [OpenapiClient::InstallmentOptions](docs/InstallmentOptions.md)
 - [OpenapiClient::IssuerResponse](docs/IssuerResponse.md)
 - [OpenapiClient::Items](docs/Items.md)
 - [OpenapiClient::Location](docs/Location.md)
 - [OpenapiClient::LockoutTime](docs/LockoutTime.md)
 - [OpenapiClient::Lodging](docs/Lodging.md)
 - [OpenapiClient::LodgingExtraCharges](docs/LodgingExtraCharges.md)
 - [OpenapiClient::Logo](docs/Logo.md)
 - [OpenapiClient::Loyalty](docs/Loyalty.md)
 - [OpenapiClient::MasterpassWalletPaymentMethod](docs/MasterpassWalletPaymentMethod.md)
 - [OpenapiClient::MasterpassWalletPaymentMethodAllOf](docs/MasterpassWalletPaymentMethodAllOf.md)
 - [OpenapiClient::MaximumPurchaseAmount](docs/MaximumPurchaseAmount.md)
 - [OpenapiClient::Mcc6012](docs/Mcc6012.md)
 - [OpenapiClient::Merchant](docs/Merchant.md)
 - [OpenapiClient::Method](docs/Method.md)
 - [OpenapiClient::Mobile](docs/Mobile.md)
 - [OpenapiClient::MobileHeaderArea](docs/MobileHeaderArea.md)
 - [OpenapiClient::Order](docs/Order.md)
 - [OpenapiClient::OrderErrorResponse](docs/OrderErrorResponse.md)
 - [OpenapiClient::OrderResponse](docs/OrderResponse.md)
 - [OpenapiClient::PayPal](docs/PayPal.md)
 - [OpenapiClient::PayPalPaymentMethod](docs/PayPalPaymentMethod.md)
 - [OpenapiClient::PayPalPaymentMethodAllOf](docs/PayPalPaymentMethodAllOf.md)
 - [OpenapiClient::Payment](docs/Payment.md)
 - [OpenapiClient::PaymentCard](docs/PaymentCard.md)
 - [OpenapiClient::PaymentCardCreditTransaction](docs/PaymentCardCreditTransaction.md)
 - [OpenapiClient::PaymentCardDisbursementTransaction](docs/PaymentCardDisbursementTransaction.md)
 - [OpenapiClient::PaymentCardDisbursementTransactionAllOf](docs/PaymentCardDisbursementTransactionAllOf.md)
 - [OpenapiClient::PaymentCardForcedTicketTransaction](docs/PaymentCardForcedTicketTransaction.md)
 - [OpenapiClient::PaymentCardForcedTicketTransactionAllOf](docs/PaymentCardForcedTicketTransactionAllOf.md)
 - [OpenapiClient::PaymentCardInfoLookupRequest](docs/PaymentCardInfoLookupRequest.md)
 - [OpenapiClient::PaymentCardInfoLookupRequestAllOf](docs/PaymentCardInfoLookupRequestAllOf.md)
 - [OpenapiClient::PaymentCardPayerAuthTransaction](docs/PaymentCardPayerAuthTransaction.md)
 - [OpenapiClient::PaymentCardPayerAuthTransactionAllOf](docs/PaymentCardPayerAuthTransactionAllOf.md)
 - [OpenapiClient::PaymentCardPaymentMethod](docs/PaymentCardPaymentMethod.md)
 - [OpenapiClient::PaymentCardPaymentMethodAllOf](docs/PaymentCardPaymentMethodAllOf.md)
 - [OpenapiClient::PaymentCardPaymentTokenUpdateRequest](docs/PaymentCardPaymentTokenUpdateRequest.md)
 - [OpenapiClient::PaymentCardPaymentTokenizationRequest](docs/PaymentCardPaymentTokenizationRequest.md)
 - [OpenapiClient::PaymentCardPaymentTokenizationRequestAllOf](docs/PaymentCardPaymentTokenizationRequestAllOf.md)
 - [OpenapiClient::PaymentCardPreAuthTransaction](docs/PaymentCardPreAuthTransaction.md)
 - [OpenapiClient::PaymentCardPreAuthTransactionAllOf](docs/PaymentCardPreAuthTransactionAllOf.md)
 - [OpenapiClient::PaymentCardSaleTransaction](docs/PaymentCardSaleTransaction.md)
 - [OpenapiClient::PaymentCardSaleTransactionAllOf](docs/PaymentCardSaleTransactionAllOf.md)
 - [OpenapiClient::PaymentCardVerificationRequest](docs/PaymentCardVerificationRequest.md)
 - [OpenapiClient::PaymentCardVerificationRequestAllOf](docs/PaymentCardVerificationRequestAllOf.md)
 - [OpenapiClient::PaymentDevice](docs/PaymentDevice.md)
 - [OpenapiClient::PaymentDeviceCreditTransaction](docs/PaymentDeviceCreditTransaction.md)
 - [OpenapiClient::PaymentDeviceCreditTransactionAllOf](docs/PaymentDeviceCreditTransactionAllOf.md)
 - [OpenapiClient::PaymentDeviceDisbursementTransaction](docs/PaymentDeviceDisbursementTransaction.md)
 - [OpenapiClient::PaymentDeviceDisbursementTransactionAllOf](docs/PaymentDeviceDisbursementTransactionAllOf.md)
 - [OpenapiClient::PaymentDevicePaymentMethod](docs/PaymentDevicePaymentMethod.md)
 - [OpenapiClient::PaymentDevicePaymentMethodAllOf](docs/PaymentDevicePaymentMethodAllOf.md)
 - [OpenapiClient::PaymentDevicePaymentTokenizationRequest](docs/PaymentDevicePaymentTokenizationRequest.md)
 - [OpenapiClient::PaymentDevicePaymentTokenizationRequestAllOf](docs/PaymentDevicePaymentTokenizationRequestAllOf.md)
 - [OpenapiClient::PaymentDevicePreAuthTransaction](docs/PaymentDevicePreAuthTransaction.md)
 - [OpenapiClient::PaymentDevicePreAuthTransactionAllOf](docs/PaymentDevicePreAuthTransactionAllOf.md)
 - [OpenapiClient::PaymentDeviceSaleTransaction](docs/PaymentDeviceSaleTransaction.md)
 - [OpenapiClient::PaymentDeviceSaleTransactionAllOf](docs/PaymentDeviceSaleTransactionAllOf.md)
 - [OpenapiClient::PaymentFacilitator](docs/PaymentFacilitator.md)
 - [OpenapiClient::PaymentMethodDetails](docs/PaymentMethodDetails.md)
 - [OpenapiClient::PaymentMethodPaymentSchedulesRequest](docs/PaymentMethodPaymentSchedulesRequest.md)
 - [OpenapiClient::PaymentMethodPaymentSchedulesRequestAllOf](docs/PaymentMethodPaymentSchedulesRequestAllOf.md)
 - [OpenapiClient::PaymentMethodType](docs/PaymentMethodType.md)
 - [OpenapiClient::PaymentRegistration](docs/PaymentRegistration.md)
 - [OpenapiClient::PaymentSchedulesErrorResponse](docs/PaymentSchedulesErrorResponse.md)
 - [OpenapiClient::PaymentSchedulesRequest](docs/PaymentSchedulesRequest.md)
 - [OpenapiClient::PaymentSchedulesResponse](docs/PaymentSchedulesResponse.md)
 - [OpenapiClient::PaymentTokenCreditTransaction](docs/PaymentTokenCreditTransaction.md)
 - [OpenapiClient::PaymentTokenCreditTransactionAllOf](docs/PaymentTokenCreditTransactionAllOf.md)
 - [OpenapiClient::PaymentTokenDetails](docs/PaymentTokenDetails.md)
 - [OpenapiClient::PaymentTokenDetailsAllOf](docs/PaymentTokenDetailsAllOf.md)
 - [OpenapiClient::PaymentTokenDisbursementTransaction](docs/PaymentTokenDisbursementTransaction.md)
 - [OpenapiClient::PaymentTokenDisbursementTransactionAllOf](docs/PaymentTokenDisbursementTransactionAllOf.md)
 - [OpenapiClient::PaymentTokenInfoLookupRequest](docs/PaymentTokenInfoLookupRequest.md)
 - [OpenapiClient::PaymentTokenInfoLookupRequestAllOf](docs/PaymentTokenInfoLookupRequestAllOf.md)
 - [OpenapiClient::PaymentTokenPaymentMethod](docs/PaymentTokenPaymentMethod.md)
 - [OpenapiClient::PaymentTokenPaymentMethodAllOf](docs/PaymentTokenPaymentMethodAllOf.md)
 - [OpenapiClient::PaymentTokenPreAuthTransaction](docs/PaymentTokenPreAuthTransaction.md)
 - [OpenapiClient::PaymentTokenPreAuthTransactionAllOf](docs/PaymentTokenPreAuthTransactionAllOf.md)
 - [OpenapiClient::PaymentTokenSaleTransaction](docs/PaymentTokenSaleTransaction.md)
 - [OpenapiClient::PaymentTokenSaleTransactionAllOf](docs/PaymentTokenSaleTransactionAllOf.md)
 - [OpenapiClient::PaymentTokenUpdateResponse](docs/PaymentTokenUpdateResponse.md)
 - [OpenapiClient::PaymentTokenVerificationRequest](docs/PaymentTokenVerificationRequest.md)
 - [OpenapiClient::PaymentTokenVerificationRequestAllOf](docs/PaymentTokenVerificationRequestAllOf.md)
 - [OpenapiClient::PaymentTokenizationErrorResponse](docs/PaymentTokenizationErrorResponse.md)
 - [OpenapiClient::PaymentTokenizationRequest](docs/PaymentTokenizationRequest.md)
 - [OpenapiClient::PaymentTokenizationResponse](docs/PaymentTokenizationResponse.md)
 - [OpenapiClient::PaymentUrlDetail](docs/PaymentUrlDetail.md)
 - [OpenapiClient::PaymentUrlDetailResponse](docs/PaymentUrlDetailResponse.md)
 - [OpenapiClient::PaymentUrlErrorResponse](docs/PaymentUrlErrorResponse.md)
 - [OpenapiClient::PaymentUrlRequest](docs/PaymentUrlRequest.md)
 - [OpenapiClient::PaymentUrlResponse](docs/PaymentUrlResponse.md)
 - [OpenapiClient::PaymentUrlStatus](docs/PaymentUrlStatus.md)
 - [OpenapiClient::PaypalCreditTransaction](docs/PaypalCreditTransaction.md)
 - [OpenapiClient::PaypalCreditTransactionAllOf](docs/PaypalCreditTransactionAllOf.md)
 - [OpenapiClient::Phone](docs/Phone.md)
 - [OpenapiClient::PostAuthTransaction](docs/PostAuthTransaction.md)
 - [OpenapiClient::PostAuthTransactionAllOf](docs/PostAuthTransactionAllOf.md)
 - [OpenapiClient::Primary](docs/Primary.md)
 - [OpenapiClient::PrimaryTransaction](docs/PrimaryTransaction.md)
 - [OpenapiClient::ProcessorData](docs/ProcessorData.md)
 - [OpenapiClient::Properties](docs/Properties.md)
 - [OpenapiClient::PurchaseCards](docs/PurchaseCards.md)
 - [OpenapiClient::PurchaseCardsLevel2](docs/PurchaseCardsLevel2.md)
 - [OpenapiClient::PurchaseCardsLevel3](docs/PurchaseCardsLevel3.md)
 - [OpenapiClient::PurchaseCardsLevel3LineItems](docs/PurchaseCardsLevel3LineItems.md)
 - [OpenapiClient::Receipt](docs/Receipt.md)
 - [OpenapiClient::ReceiptLine](docs/ReceiptLine.md)
 - [OpenapiClient::ReceiptRequestInfo](docs/ReceiptRequestInfo.md)
 - [OpenapiClient::ReceiverInfo](docs/ReceiverInfo.md)
 - [OpenapiClient::RecurringPaymentDetails](docs/RecurringPaymentDetails.md)
 - [OpenapiClient::RecurringPaymentDetailsResponse](docs/RecurringPaymentDetailsResponse.md)
 - [OpenapiClient::ReferencedOrderPaymentSchedulesRequest](docs/ReferencedOrderPaymentSchedulesRequest.md)
 - [OpenapiClient::ReferencedOrderPaymentSchedulesRequestAllOf](docs/ReferencedOrderPaymentSchedulesRequestAllOf.md)
 - [OpenapiClient::ReferencedOrderPaymentTokenizationRequest](docs/ReferencedOrderPaymentTokenizationRequest.md)
 - [OpenapiClient::ReferencedOrderPaymentTokenizationRequestAllOf](docs/ReferencedOrderPaymentTokenizationRequestAllOf.md)
 - [OpenapiClient::RegistrationMethod](docs/RegistrationMethod.md)
 - [OpenapiClient::RemoveFraudBlockedItemsResponse](docs/RemoveFraudBlockedItemsResponse.md)
 - [OpenapiClient::ResponseAmountComponents](docs/ResponseAmountComponents.md)
 - [OpenapiClient::ResponseAmountComponentsAllOf](docs/ResponseAmountComponentsAllOf.md)
 - [OpenapiClient::ResponseType](docs/ResponseType.md)
 - [OpenapiClient::ReturnTransaction](docs/ReturnTransaction.md)
 - [OpenapiClient::ReturnTransactionAllOf](docs/ReturnTransactionAllOf.md)
 - [OpenapiClient::ScoreOnlyRequest](docs/ScoreOnlyRequest.md)
 - [OpenapiClient::ScoreOnlyResponse](docs/ScoreOnlyResponse.md)
 - [OpenapiClient::ScoreOnlyResponseFraudScore](docs/ScoreOnlyResponseFraudScore.md)
 - [OpenapiClient::ScoreOnlyResponseFraudScoreExplanations](docs/ScoreOnlyResponseFraudScoreExplanations.md)
 - [OpenapiClient::SecondaryTransaction](docs/SecondaryTransaction.md)
 - [OpenapiClient::Secure3D10AuthenticationRequest](docs/Secure3D10AuthenticationRequest.md)
 - [OpenapiClient::Secure3D10AuthenticationRequestAllOf](docs/Secure3D10AuthenticationRequestAllOf.md)
 - [OpenapiClient::Secure3D10AuthenticationResult](docs/Secure3D10AuthenticationResult.md)
 - [OpenapiClient::Secure3D10AuthenticationResultAllOf](docs/Secure3D10AuthenticationResultAllOf.md)
 - [OpenapiClient::Secure3D10AuthenticationUpdateRequest](docs/Secure3D10AuthenticationUpdateRequest.md)
 - [OpenapiClient::Secure3D10AuthenticationUpdateRequestAllOf](docs/Secure3D10AuthenticationUpdateRequestAllOf.md)
 - [OpenapiClient::Secure3D21AuthenticationRequest](docs/Secure3D21AuthenticationRequest.md)
 - [OpenapiClient::Secure3D21AuthenticationRequestAllOf](docs/Secure3D21AuthenticationRequestAllOf.md)
 - [OpenapiClient::Secure3D21AuthenticationResult](docs/Secure3D21AuthenticationResult.md)
 - [OpenapiClient::Secure3D21AuthenticationResultAllOf](docs/Secure3D21AuthenticationResultAllOf.md)
 - [OpenapiClient::Secure3D21AuthenticationUpdateRequest](docs/Secure3D21AuthenticationUpdateRequest.md)
 - [OpenapiClient::Secure3D21AuthenticationUpdateRequestAllOf](docs/Secure3D21AuthenticationUpdateRequestAllOf.md)
 - [OpenapiClient::Secure3DAuthenticationRequest](docs/Secure3DAuthenticationRequest.md)
 - [OpenapiClient::Secure3DAuthenticationRequestAllOf](docs/Secure3DAuthenticationRequestAllOf.md)
 - [OpenapiClient::Secure3DAuthenticationResponse](docs/Secure3DAuthenticationResponse.md)
 - [OpenapiClient::Secure3DAuthenticationResponseParams](docs/Secure3DAuthenticationResponseParams.md)
 - [OpenapiClient::Secure3DAuthenticationResponseSecure3dMethod](docs/Secure3DAuthenticationResponseSecure3dMethod.md)
 - [OpenapiClient::Secure3DAuthenticationResult](docs/Secure3DAuthenticationResult.md)
 - [OpenapiClient::Secure3DAuthenticationResultAllOf](docs/Secure3DAuthenticationResultAllOf.md)
 - [OpenapiClient::Secure3DAuthenticationUpdateRequest](docs/Secure3DAuthenticationUpdateRequest.md)
 - [OpenapiClient::Secure3dResponse](docs/Secure3dResponse.md)
 - [OpenapiClient::SenderInfo](docs/SenderInfo.md)
 - [OpenapiClient::Sepa](docs/Sepa.md)
 - [OpenapiClient::SepaMandate](docs/SepaMandate.md)
 - [OpenapiClient::SepaPaymentMethod](docs/SepaPaymentMethod.md)
 - [OpenapiClient::SepaPaymentMethodAllOf](docs/SepaPaymentMethodAllOf.md)
 - [OpenapiClient::SepaSaleTransaction](docs/SepaSaleTransaction.md)
 - [OpenapiClient::SepaSaleTransactionAllOf](docs/SepaSaleTransactionAllOf.md)
 - [OpenapiClient::SharedSecretConfigurationRequest](docs/SharedSecretConfigurationRequest.md)
 - [OpenapiClient::SharedSecretConfigurationResponse](docs/SharedSecretConfigurationResponse.md)
 - [OpenapiClient::ShipToAddress](docs/ShipToAddress.md)
 - [OpenapiClient::Shipping](docs/Shipping.md)
 - [OpenapiClient::SofortSetup](docs/SofortSetup.md)
 - [OpenapiClient::SofortSetupResponse](docs/SofortSetupResponse.md)
 - [OpenapiClient::SoftDescriptor](docs/SoftDescriptor.md)
 - [OpenapiClient::SplitShipment](docs/SplitShipment.md)
 - [OpenapiClient::StoreBrandingStyleConfiguration](docs/StoreBrandingStyleConfiguration.md)
 - [OpenapiClient::StoreEmailSettings](docs/StoreEmailSettings.md)
 - [OpenapiClient::StoreEmailSettingsResult](docs/StoreEmailSettingsResult.md)
 - [OpenapiClient::StoreFraudSettings](docs/StoreFraudSettings.md)
 - [OpenapiClient::StoreFraudSettingsResult](docs/StoreFraudSettingsResult.md)
 - [OpenapiClient::StoreUrlConfiguration](docs/StoreUrlConfiguration.md)
 - [OpenapiClient::StoreUrlConfigurationRequest](docs/StoreUrlConfigurationRequest.md)
 - [OpenapiClient::StoreUrlConfigurationResponse](docs/StoreUrlConfigurationResponse.md)
 - [OpenapiClient::StoreUrlConfigurationResult](docs/StoreUrlConfigurationResult.md)
 - [OpenapiClient::StoredCredential](docs/StoredCredential.md)
 - [OpenapiClient::SubMerchantData](docs/SubMerchantData.md)
 - [OpenapiClient::SubMerchantSplit](docs/SubMerchantSplit.md)
 - [OpenapiClient::TeleCheckAchPaymentMethod](docs/TeleCheckAchPaymentMethod.md)
 - [OpenapiClient::TeleCheckAchPaymentMethodAchBillTo](docs/TeleCheckAchPaymentMethodAchBillTo.md)
 - [OpenapiClient::TeleCheckCBPPaymentMethod](docs/TeleCheckCBPPaymentMethod.md)
 - [OpenapiClient::TeleCheckICAPaymentMethod](docs/TeleCheckICAPaymentMethod.md)
 - [OpenapiClient::TeleCheckICAPaymentMethodAllOf](docs/TeleCheckICAPaymentMethodAllOf.md)
 - [OpenapiClient::Text](docs/Text.md)
 - [OpenapiClient::Title](docs/Title.md)
 - [OpenapiClient::TokenIdentifier](docs/TokenIdentifier.md)
 - [OpenapiClient::TopBar](docs/TopBar.md)
 - [OpenapiClient::TransactionErrorResponse](docs/TransactionErrorResponse.md)
 - [OpenapiClient::TransactionOrigin](docs/TransactionOrigin.md)
 - [OpenapiClient::TransactionResponse](docs/TransactionResponse.md)
 - [OpenapiClient::TransactionType](docs/TransactionType.md)
 - [OpenapiClient::UnionPayAuthenticationRequest](docs/UnionPayAuthenticationRequest.md)
 - [OpenapiClient::UnionPayAuthenticationRequestAllOf](docs/UnionPayAuthenticationRequestAllOf.md)
 - [OpenapiClient::UnionPayAuthenticationUpdateRequest](docs/UnionPayAuthenticationUpdateRequest.md)
 - [OpenapiClient::UnionPayAuthenticationUpdateRequestAllOf](docs/UnionPayAuthenticationUpdateRequestAllOf.md)
 - [OpenapiClient::UpdateEmailSettingsRequest](docs/UpdateEmailSettingsRequest.md)
 - [OpenapiClient::UpdateEmailSettingsResponse](docs/UpdateEmailSettingsResponse.md)
 - [OpenapiClient::UpdateFraudSettingsRequest](docs/UpdateFraudSettingsRequest.md)
 - [OpenapiClient::UpdateFraudSettingsResponse](docs/UpdateFraudSettingsResponse.md)
 - [OpenapiClient::UpdatePaymentToken](docs/UpdatePaymentToken.md)
 - [OpenapiClient::UsePaymentToken](docs/UsePaymentToken.md)
 - [OpenapiClient::Verification3ds](docs/Verification3ds.md)
 - [OpenapiClient::VerificationAvs](docs/VerificationAvs.md)
 - [OpenapiClient::VerificationCvv](docs/VerificationCvv.md)
 - [OpenapiClient::VoidPreAuthTransactions](docs/VoidPreAuthTransactions.md)
 - [OpenapiClient::VoidTransaction](docs/VoidTransaction.md)
 - [OpenapiClient::VoidTransactionAllOf](docs/VoidTransactionAllOf.md)
 - [OpenapiClient::WalletPaymentMethod](docs/WalletPaymentMethod.md)
 - [OpenapiClient::WalletPreAuthTransaction](docs/WalletPreAuthTransaction.md)
 - [OpenapiClient::WalletPreAuthTransactionAllOf](docs/WalletPreAuthTransactionAllOf.md)
 - [OpenapiClient::WalletSaleTransaction](docs/WalletSaleTransaction.md)
 - [OpenapiClient::WalletSaleTransactionAllOf](docs/WalletSaleTransactionAllOf.md)


## Documentation for Authorization

 All endpoints do not require authorization.

