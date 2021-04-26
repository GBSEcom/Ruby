# OpenapiClient::ProvideDetailPaymentStepResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**detail_key** | **String** | MerchantIdentifier of the provided detail. | [optional] 
**detail_value** | **String** | Value provided by the payer or merchant, validated by JavaScript regular expression | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ProvideDetailPaymentStepResponseAllOf.new(detail_key: BLIK_CODE,
                                 detail_value: 777712)
```


