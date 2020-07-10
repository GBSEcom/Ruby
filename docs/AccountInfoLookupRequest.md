# OpenapiClient::AccountInfoLookupRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the account verification request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccountInfoLookupRequest.new(request_type: PaymentCardInfoLookupRequest,
                                 store_id: 12345500000)
```


