# FirstApiClient

Payment Gateway API Specification.
- API version: 6.9.1

## Installation

### Install the gem

```shell
gem install first_data_gateway
```
(for development, run `gem install --dev first_data_gateway` to install the development dependencies)

Then add the gem to your Gemfile:

    gem 'first_data_gateway', '~> 1.5.0'

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
*OpenapiClient::CardInfoLookupApi* | [**card_info_lookup**](docs/CardInfoLookupApi.md#card_info_lookup) | **POST** /card-information | Card information lookup.
*OpenapiClient::CardVerificationApi* | [**verify_card**](docs/CardVerificationApi.md#verify_card) | **POST** /card-verification | Verify a payment card.
*OpenapiClient::CurrencyConversionApi* | [**get_exchange_rate**](docs/CurrencyConversionApi.md#get_exchange_rate) | **POST** /exchange-rates | Generate dynamic currency conversion transactions.
*OpenapiClient::FraudDetectApi* | [**score_only**](docs/FraudDetectApi.md#score_only) | **POST** /fraud/score-only | Score a transaction for fraud.
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
*OpenapiClient::PaymentURLApi* | [**create_payment_url**](docs/PaymentURLApi.md#create_payment_url) | **POST** /payment-url | Create a payment URL.


## Documentation for Models

 - [OpenapiClient::AVSResponse](docs/AVSResponse.md)
 - [OpenapiClient::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [OpenapiClient::AccountUpdaterResponse](docs/AccountUpdaterResponse.md)
 - [OpenapiClient::AdditionalAmountRate](docs/AdditionalAmountRate.md)
 - [OpenapiClient::AdditionalDetails](docs/AdditionalDetails.md)
 - [OpenapiClient::AdditionalTransactionDetails](docs/AdditionalTransactionDetails.md)
 - [OpenapiClient::Address](docs/Address.md)
 - [OpenapiClient::Airline](docs/Airline.md)
 - [OpenapiClient::AirlineAncillaryServiceCategory](docs/AirlineAncillaryServiceCategory.md)
 - [OpenapiClient::AirlineTravelRoute](docs/AirlineTravelRoute.md)
 - [OpenapiClient::AliPay](docs/AliPay.md)
 - [OpenapiClient::AliPayPaymentMethod](docs/AliPayPaymentMethod.md)
 - [OpenapiClient::AliPaySaleTransaction](docs/AliPaySaleTransaction.md)
 - [OpenapiClient::Amount](docs/Amount.md)
 - [OpenapiClient::AmountComponents](docs/AmountComponents.md)
 - [OpenapiClient::Authentication](docs/Authentication.md)
 - [OpenapiClient::AuthenticationRedirect](docs/AuthenticationRedirect.md)
 - [OpenapiClient::AuthenticationRedirectParams](docs/AuthenticationRedirectParams.md)
 - [OpenapiClient::AuthenticationVerificationRequest](docs/AuthenticationVerificationRequest.md)
 - [OpenapiClient::BasicResponse](docs/BasicResponse.md)
 - [OpenapiClient::Billing](docs/Billing.md)
 - [OpenapiClient::BillingAddress](docs/BillingAddress.md)
 - [OpenapiClient::BillingAddressPhone](docs/BillingAddressPhone.md)
 - [OpenapiClient::CarRental](docs/CarRental.md)
 - [OpenapiClient::CarRentalExtraCharges](docs/CarRentalExtraCharges.md)
 - [OpenapiClient::Card](docs/Card.md)
 - [OpenapiClient::CardFunction](docs/CardFunction.md)
 - [OpenapiClient::CardInfo](docs/CardInfo.md)
 - [OpenapiClient::CardInfoLookupRequest](docs/CardInfoLookupRequest.md)
 - [OpenapiClient::CardInfoLookupResponse](docs/CardInfoLookupResponse.md)
 - [OpenapiClient::CardVerificationRequest](docs/CardVerificationRequest.md)
 - [OpenapiClient::ChinaDomestic](docs/ChinaDomestic.md)
 - [OpenapiClient::ChinaDomesticPaymentMethod](docs/ChinaDomesticPaymentMethod.md)
 - [OpenapiClient::ChinaPnRSaleTransaction](docs/ChinaPnRSaleTransaction.md)
 - [OpenapiClient::ClientLocale](docs/ClientLocale.md)
 - [OpenapiClient::Contact](docs/Contact.md)
 - [OpenapiClient::CreatePaymentToken](docs/CreatePaymentToken.md)
 - [OpenapiClient::CurrencyConversion](docs/CurrencyConversion.md)
 - [OpenapiClient::Customer](docs/Customer.md)
 - [OpenapiClient::CustomerAddress](docs/CustomerAddress.md)
 - [OpenapiClient::CustomerAddressPhone](docs/CustomerAddressPhone.md)
 - [OpenapiClient::DCCExchangeRateRequest](docs/DCCExchangeRateRequest.md)
 - [OpenapiClient::Dcc](docs/Dcc.md)
 - [OpenapiClient::Device](docs/Device.md)
 - [OpenapiClient::DeviceNetworks](docs/DeviceNetworks.md)
 - [OpenapiClient::Document](docs/Document.md)
 - [OpenapiClient::DynamicPricing](docs/DynamicPricing.md)
 - [OpenapiClient::DynamicPricingExchangeRateRequest](docs/DynamicPricingExchangeRateRequest.md)
 - [OpenapiClient::Error](docs/Error.md)
 - [OpenapiClient::ErrorDetails](docs/ErrorDetails.md)
 - [OpenapiClient::ErrorResponse](docs/ErrorResponse.md)
 - [OpenapiClient::ExchangeRateRequest](docs/ExchangeRateRequest.md)
 - [OpenapiClient::ExchangeRateResponse](docs/ExchangeRateResponse.md)
 - [OpenapiClient::Expiration](docs/Expiration.md)
 - [OpenapiClient::FraudOrder](docs/FraudOrder.md)
 - [OpenapiClient::FraudOrderItems](docs/FraudOrderItems.md)
 - [OpenapiClient::FraudOrderShipToAddress](docs/FraudOrderShipToAddress.md)
 - [OpenapiClient::Frequency](docs/Frequency.md)
 - [OpenapiClient::IndustrySpecificExtensions](docs/IndustrySpecificExtensions.md)
 - [OpenapiClient::InstallmentOptions](docs/InstallmentOptions.md)
 - [OpenapiClient::Lodging](docs/Lodging.md)
 - [OpenapiClient::LodgingExtraCharges](docs/LodgingExtraCharges.md)
 - [OpenapiClient::Loyalty](docs/Loyalty.md)
 - [OpenapiClient::Merchant](docs/Merchant.md)
 - [OpenapiClient::MerchantLocation](docs/MerchantLocation.md)
 - [OpenapiClient::MerchantLocationMerchantAddress](docs/MerchantLocationMerchantAddress.md)
 - [OpenapiClient::Order](docs/Order.md)
 - [OpenapiClient::OrderErrorResponse](docs/OrderErrorResponse.md)
 - [OpenapiClient::OrderResponse](docs/OrderResponse.md)
 - [OpenapiClient::PayPal](docs/PayPal.md)
 - [OpenapiClient::PayPalPaymentMethod](docs/PayPalPaymentMethod.md)
 - [OpenapiClient::Payment](docs/Payment.md)
 - [OpenapiClient::PaymentCard](docs/PaymentCard.md)
 - [OpenapiClient::PaymentCardCreditTransaction](docs/PaymentCardCreditTransaction.md)
 - [OpenapiClient::PaymentCardForcedTicketTransaction](docs/PaymentCardForcedTicketTransaction.md)
 - [OpenapiClient::PaymentCardPayerAuthTransaction](docs/PaymentCardPayerAuthTransaction.md)
 - [OpenapiClient::PaymentCardPaymentMethod](docs/PaymentCardPaymentMethod.md)
 - [OpenapiClient::PaymentCardPaymentTokenizationRequest](docs/PaymentCardPaymentTokenizationRequest.md)
 - [OpenapiClient::PaymentCardPreAuthTransaction](docs/PaymentCardPreAuthTransaction.md)
 - [OpenapiClient::PaymentCardSaleTransaction](docs/PaymentCardSaleTransaction.md)
 - [OpenapiClient::PaymentFacilitator](docs/PaymentFacilitator.md)
 - [OpenapiClient::PaymentIssuerResponse](docs/PaymentIssuerResponse.md)
 - [OpenapiClient::PaymentMethod](docs/PaymentMethod.md)
 - [OpenapiClient::PaymentMethodDetails](docs/PaymentMethodDetails.md)
 - [OpenapiClient::PaymentMethodPaymentSchedulesRequest](docs/PaymentMethodPaymentSchedulesRequest.md)
 - [OpenapiClient::PaymentMethodType](docs/PaymentMethodType.md)
 - [OpenapiClient::PaymentPayMethod](docs/PaymentPayMethod.md)
 - [OpenapiClient::PaymentSchedulesErrorResponse](docs/PaymentSchedulesErrorResponse.md)
 - [OpenapiClient::PaymentSchedulesRequest](docs/PaymentSchedulesRequest.md)
 - [OpenapiClient::PaymentSchedulesResponse](docs/PaymentSchedulesResponse.md)
 - [OpenapiClient::PaymentTokenCreditTransaction](docs/PaymentTokenCreditTransaction.md)
 - [OpenapiClient::PaymentTokenDetails](docs/PaymentTokenDetails.md)
 - [OpenapiClient::PaymentTokenPaymentMethod](docs/PaymentTokenPaymentMethod.md)
 - [OpenapiClient::PaymentTokenPreAuthTransaction](docs/PaymentTokenPreAuthTransaction.md)
 - [OpenapiClient::PaymentTokenSaleTransaction](docs/PaymentTokenSaleTransaction.md)
 - [OpenapiClient::PaymentTokenizationErrorResponse](docs/PaymentTokenizationErrorResponse.md)
 - [OpenapiClient::PaymentTokenizationRequest](docs/PaymentTokenizationRequest.md)
 - [OpenapiClient::PaymentTokenizationResponse](docs/PaymentTokenizationResponse.md)
 - [OpenapiClient::PaymentUrlErrorResponse](docs/PaymentUrlErrorResponse.md)
 - [OpenapiClient::PaymentUrlRequest](docs/PaymentUrlRequest.md)
 - [OpenapiClient::PaymentUrlResponse](docs/PaymentUrlResponse.md)
 - [OpenapiClient::PaymentVerification3ds](docs/PaymentVerification3ds.md)
 - [OpenapiClient::PaymentVerificationAvs](docs/PaymentVerificationAvs.md)
 - [OpenapiClient::PaymentVerificationCvv](docs/PaymentVerificationCvv.md)
 - [OpenapiClient::PaypalCreditTransaction](docs/PaypalCreditTransaction.md)
 - [OpenapiClient::PostAuthTransaction](docs/PostAuthTransaction.md)
 - [OpenapiClient::PrimaryTransaction](docs/PrimaryTransaction.md)
 - [OpenapiClient::ProcessorData](docs/ProcessorData.md)
 - [OpenapiClient::PurchaseCards](docs/PurchaseCards.md)
 - [OpenapiClient::PurchaseCardsLevel2](docs/PurchaseCardsLevel2.md)
 - [OpenapiClient::PurchaseCardsLevel3](docs/PurchaseCardsLevel3.md)
 - [OpenapiClient::PurchaseCardsLevel3LineItems](docs/PurchaseCardsLevel3LineItems.md)
 - [OpenapiClient::RecurringPaymentDetails](docs/RecurringPaymentDetails.md)
 - [OpenapiClient::RecurringPaymentDetailsResponse](docs/RecurringPaymentDetailsResponse.md)
 - [OpenapiClient::ReferencedOrderPaymentSchedulesRequest](docs/ReferencedOrderPaymentSchedulesRequest.md)
 - [OpenapiClient::ReferencedOrderPaymentTokenizationRequest](docs/ReferencedOrderPaymentTokenizationRequest.md)
 - [OpenapiClient::ResponseAmountComponents](docs/ResponseAmountComponents.md)
 - [OpenapiClient::ResponseType](docs/ResponseType.md)
 - [OpenapiClient::ReturnTransaction](docs/ReturnTransaction.md)
 - [OpenapiClient::ScoreOnlyRequest](docs/ScoreOnlyRequest.md)
 - [OpenapiClient::ScoreOnlyResponse](docs/ScoreOnlyResponse.md)
 - [OpenapiClient::ScoreOnlyResponseFraudScore](docs/ScoreOnlyResponseFraudScore.md)
 - [OpenapiClient::ScoreOnlyResponseFraudScoreExplanations](docs/ScoreOnlyResponseFraudScoreExplanations.md)
 - [OpenapiClient::SecondaryTransaction](docs/SecondaryTransaction.md)
 - [OpenapiClient::Secure3dAuthenticationRequest](docs/Secure3dAuthenticationRequest.md)
 - [OpenapiClient::Secure3dAuthenticationResult](docs/Secure3dAuthenticationResult.md)
 - [OpenapiClient::Secure3dAuthenticationVerificationRequest](docs/Secure3dAuthenticationVerificationRequest.md)
 - [OpenapiClient::Secure3dResponse](docs/Secure3dResponse.md)
 - [OpenapiClient::Sepa](docs/Sepa.md)
 - [OpenapiClient::SepaMandate](docs/SepaMandate.md)
 - [OpenapiClient::SepaPaymentMethod](docs/SepaPaymentMethod.md)
 - [OpenapiClient::SepaSaleTransaction](docs/SepaSaleTransaction.md)
 - [OpenapiClient::Shipping](docs/Shipping.md)
 - [OpenapiClient::SoftDescriptor](docs/SoftDescriptor.md)
 - [OpenapiClient::SplitShipment](docs/SplitShipment.md)
 - [OpenapiClient::StoredCredential](docs/StoredCredential.md)
 - [OpenapiClient::SubMerchantData](docs/SubMerchantData.md)
 - [OpenapiClient::SubMerchantSplit](docs/SubMerchantSplit.md)
 - [OpenapiClient::Transaction](docs/Transaction.md)
 - [OpenapiClient::TransactionErrorResponse](docs/TransactionErrorResponse.md)
 - [OpenapiClient::TransactionOrigin](docs/TransactionOrigin.md)
 - [OpenapiClient::TransactionResponse](docs/TransactionResponse.md)
 - [OpenapiClient::TransactionType](docs/TransactionType.md)
 - [OpenapiClient::UnionPayAuthenticationRequest](docs/UnionPayAuthenticationRequest.md)
 - [OpenapiClient::UnionPayAuthenticationVerificationRequest](docs/UnionPayAuthenticationVerificationRequest.md)
 - [OpenapiClient::UsePaymentToken](docs/UsePaymentToken.md)
 - [OpenapiClient::VoidTransaction](docs/VoidTransaction.md)
