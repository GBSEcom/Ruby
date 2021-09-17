# OpenapiClient::PaymentCardPayerAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentCardPaymentMethod**](PaymentCardPaymentMethod.md) |  | 
**currency_conversion** | [**CurrencyConversion**](CurrencyConversion.md) |  | [optional] 
**authentication_request** | [**AuthenticationRequest**](AuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**AuthenticationResult**](AuthenticationResult.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardPayerAuthTransaction.new(payment_method: null,
                                 currency_conversion: null,
                                 authentication_request: null,
                                 authentication_result: null)
```


