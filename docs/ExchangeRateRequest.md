# OpenapiClient::ExchangeRateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the exchange rate request. | 
**base_amount** | **Float** | The original amount of the merchant currency for calculation. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ExchangeRateRequest.new(request_type: DCCExchangeRateRequest,
                                 base_amount: 12.32,
                                 store_id: 1109959991)
```


