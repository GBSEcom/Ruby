# FirstApiClient

## Installation

### Install the gem

```shell
gem install first_api_client
```
(for development, run `gem install --dev first_api_client` to install the development dependencies)

Then add the gem to your Gemfile:

    gem 'first_api_client', '~> 1.0.0'

### Install from Git

Add the following in the Gemfile:

    gem 'swagger_client', :git => 'https://github.com/GBSEcom/Ruby.git'

## Getting Started

```ruby
# Load the gem
require 'swagger_client'
require 'simple_client'

api_key = "Your API Key here"
api_secret = "Your API Secret here"

credentials = SimpleClient::MerchantCredentials.new(api_key, api_secret)

gateway = SimpleClient::Gataeway.create(credentials)

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
						\"number\":\"4111111111111111\"
					},
					\"type\":\"PAYMENT_CARD\"
				},
				\"transactionType\":\"SALE\"
			}"
result = gateway.primary_payment_transaction(payload)
p JSON.generate(result.to_hash)
```

## Documentation for API Endpoints

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*SwaggerClient::AuthenticationApi* | [**v1_authentication_access_tokens_post**](docs/AuthenticationApi.md#v1_authentication_access_tokens_post) | **POST** /v1/authentication/access-tokens | Generate an access token for user authentication
*SwaggerClient::OrderApi* | [**perform_payment_post_authorisation**](docs/OrderApi.md#perform_payment_post_authorisation) | **POST** /v1/orders/{order-id}/postauth | Use this to capture/complete a transaction. Partial postauths are allowed.
*SwaggerClient::OrderApi* | [**return_transaction**](docs/OrderApi.md#return_transaction) | **POST** /v1/orders/{order-id}/return | Use this to return/refund on the order. Partial returns are allowed.
*SwaggerClient::PaymentApi* | [**perform_payment_post_authorisation**](docs/PaymentApi.md#perform_payment_post_authorisation) | **POST** /v1/payments/{transaction-id}/postauth | Use this to capture/complete a transaction. Partial postauths are allowed.
*SwaggerClient::PaymentApi* | [**primary_payment_transaction**](docs/PaymentApi.md#primary_payment_transaction) | **POST** /v1/payments | Generate a primary transaction
*SwaggerClient::PaymentApi* | [**return_transaction**](docs/PaymentApi.md#return_transaction) | **POST** /v1/payments/{transaction-id}/return | Return/refund a transaction.
*SwaggerClient::PaymentApi* | [**transaction_inquiry**](docs/PaymentApi.md#transaction_inquiry) | **GET** /v1/payments/{transaction-id} | Retrieve the state of a transaction
*SwaggerClient::PaymentApi* | [**void_transaction**](docs/PaymentApi.md#void_transaction) | **POST** /v1/payments/{transaction-id}/void | Reverse a previous action on an existing transaction


## Documentation for Models

 - [SwaggerClient::AccessTokenResponse](docs/AccessTokenResponse.md)
 - [SwaggerClient::Address](docs/Address.md)
 - [SwaggerClient::Airline](docs/Airline.md)
 - [SwaggerClient::AirlineAncillaryServiceCategory](docs/AirlineAncillaryServiceCategory.md)
 - [SwaggerClient::AirlineTravelRoute](docs/AirlineTravelRoute.md)
 - [SwaggerClient::Amount](docs/Amount.md)
 - [SwaggerClient::AmountComponents](docs/AmountComponents.md)
 - [SwaggerClient::AuthenticationResponseVerification](docs/AuthenticationResponseVerification.md)
 - [SwaggerClient::BasketItem](docs/BasketItem.md)
 - [SwaggerClient::Billing](docs/Billing.md)
 - [SwaggerClient::CarRental](docs/CarRental.md)
 - [SwaggerClient::CarRentalExtraCharges](docs/CarRentalExtraCharges.md)
 - [SwaggerClient::CardVerificationsTransaction](docs/CardVerificationsTransaction.md)
 - [SwaggerClient::ClientLocale](docs/ClientLocale.md)
 - [SwaggerClient::Contact](docs/Contact.md)
 - [SwaggerClient::Error](docs/Error.md)
 - [SwaggerClient::ErrorDetails](docs/ErrorDetails.md)
 - [SwaggerClient::ErrorResponse](docs/ErrorResponse.md)
 - [SwaggerClient::Expiration](docs/Expiration.md)
 - [SwaggerClient::Frequency](docs/Frequency.md)
 - [SwaggerClient::IndustrySpecificExtensions](docs/IndustrySpecificExtensions.md)
 - [SwaggerClient::InstallmentOptions](docs/InstallmentOptions.md)
 - [SwaggerClient::Lodging](docs/Lodging.md)
 - [SwaggerClient::LodgingExtraCharges](docs/LodgingExtraCharges.md)
 - [SwaggerClient::Order](docs/Order.md)
 - [SwaggerClient::PayPal](docs/PayPal.md)
 - [SwaggerClient::PaymentCard](docs/PaymentCard.md)
 - [SwaggerClient::PaymentCardAuthenticationRequest](docs/PaymentCardAuthenticationRequest.md)
 - [SwaggerClient::PaymentCardAuthenticationResult](docs/PaymentCardAuthenticationResult.md)
 - [SwaggerClient::PaymentMethod](docs/PaymentMethod.md)
 - [SwaggerClient::PaymentSchedulesRequest](docs/PaymentSchedulesRequest.md)
 - [SwaggerClient::PaymentSchedulesResponse](docs/PaymentSchedulesResponse.md)
 - [SwaggerClient::PaymentUrlRequest](docs/PaymentUrlRequest.md)
 - [SwaggerClient::PaymentUrlResponse](docs/PaymentUrlResponse.md)
 - [SwaggerClient::PrimaryTransaction](docs/PrimaryTransaction.md)
 - [SwaggerClient::PrimaryTransactionAdditionalDetails](docs/PrimaryTransactionAdditionalDetails.md)
 - [SwaggerClient::ProcessorData](docs/ProcessorData.md)
 - [SwaggerClient::ResponseType](docs/ResponseType.md)
 - [SwaggerClient::SecondaryTransaction](docs/SecondaryTransaction.md)
 - [SwaggerClient::Sepa](docs/Sepa.md)
 - [SwaggerClient::SepaMandate](docs/SepaMandate.md)
 - [SwaggerClient::Shipping](docs/Shipping.md)
 - [SwaggerClient::SplitShipment](docs/SplitShipment.md)
 - [SwaggerClient::StoredCredential](docs/StoredCredential.md)
 - [SwaggerClient::TransactionResponse](docs/TransactionResponse.md)
 - [SwaggerClient::TransactionResponseAuthenticationRedirect](docs/TransactionResponseAuthenticationRedirect.md)
 - [SwaggerClient::TransactionResponseAuthenticationRedirectParams](docs/TransactionResponseAuthenticationRedirectParams.md)
 - [SwaggerClient::TransactionType](docs/TransactionType.md)
 - [SwaggerClient::TransactionErrorResponse](docs/TransactionErrorResponse.md)


## Documentation for Authorization

 All endpoints do not require authorization.

