# OpenapiClient::AuthenticationRedirect

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of authentication. | [optional] 
**target_url** | **String** | The URL for the authentication redirect for the merchant. | [optional] 
**params** | [**AuthenticationRedirectParams**](AuthenticationRedirectParams.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AuthenticationRedirect.new(type: SECURE_3D,
                                 target_url: https://3ds-acs.test.modirum.com/mdpayacs/pareq,
                                 params: null)
```


