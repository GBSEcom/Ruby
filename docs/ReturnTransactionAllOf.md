# OpenapiClient::ReturnTransactionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_amount** | [**Amount**](Amount.md) |  | 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**currency_conversion** | [**CurrencyConversion**](CurrencyConversion.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ReturnTransactionAllOf.new(transaction_amount: null,
                                 soft_descriptor: null,
                                 stored_credentials: null,
                                 currency_conversion: null)
```


