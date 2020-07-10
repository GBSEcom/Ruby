# OpenapiClient::PaymentCardSaleTransactionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** |  | [optional] 
**payment_method** | [**PaymentCardPaymentMethod**](PaymentCardPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 
**currency_conversion** | [**CurrencyConversion**](CurrencyConversion.md) |  | [optional] 
**authentication_request** | [**AuthenticationRequest**](AuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**AuthenticationResult**](AuthenticationResult.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardSaleTransactionAllOf.new(request_type: null,
                                 payment_method: null,
                                 stored_credentials: null,
                                 settlement_split: [{&quot;merchantID&quot;:&quot;100000001&quot;,&quot;amount&quot;:25.06},{&quot;merchantID&quot;:&quot;100000002&quot;,&quot;amount&quot;:15.07}],
                                 create_token: null,
                                 currency_conversion: null,
                                 authentication_request: null,
                                 authentication_result: null)
```


