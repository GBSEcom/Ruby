# OpenapiClient::ProvideDetailIntegrationStepResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | 
**detail_key** | **String** | MerchantIdentifier of the provided detail. | [optional] 
**detail_value** | **String** | Integration value provided by merchant during integration | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ProvideDetailIntegrationStepResponse.new(type: provide-detail,
                                 detail_key: PAYER_IP,
                                 detail_value: 1.1.1.1)
```


