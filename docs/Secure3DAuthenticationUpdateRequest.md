# OpenapiClient::Secure3DAuthenticationUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method_notification_status** | **String** | Indicates how the merchant received the 3DS method. | [optional] 
**acs_response** | [**ACSResponse**](ACSResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3DAuthenticationUpdateRequest.new(method_notification_status: RECEIVED,
                                 acs_response: null)
```


