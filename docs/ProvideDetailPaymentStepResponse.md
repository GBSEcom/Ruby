# OpenapiClient::ProvideDetailPaymentStepResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**detail_key** | **String** | MerchantIdentifier of the provided detail. | [optional] 
**detail_value** | **String** | Value provided by the payer or merchant, validated by JavaScript regular expression | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ProvideDetailPaymentStepResponse.new(type: provide-detail,
                                 detail_key: BLIK_CODE,
                                 detail_value: 777712)
```


