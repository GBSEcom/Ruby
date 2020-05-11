# OpenapiClient::AuthenticationUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**authentication_type** | **String** | Object name of the authentication update request. | 
**billing_address** | [**Address**](Address.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AuthenticationUpdateRequest.new(store_id: 12345500000,
                                 authentication_type: Secure3D10AuthenticationUpdateRequest,
                                 billing_address: null)
```


