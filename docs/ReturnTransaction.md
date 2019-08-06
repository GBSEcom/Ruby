# OpenapiClient::ReturnTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_amount** | [**Amount**](Amount.md) |  | 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 
**currency_conversion** | [**CurrencyConversion**](CurrencyConversion.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ReturnTransaction.new(transaction_amount: null,
                                 soft_descriptor: null,
                                 currency_conversion: null)
```


