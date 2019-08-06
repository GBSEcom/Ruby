# OpenapiClient::CardInfoLookupRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional outlet id for clients that support multiple stores in the same developer app. | [optional] 
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardInfoLookupRequest.new(store_id: 12345500000,
                                 payment_card: null)
```


