# OpenapiClient::Secure3DAuthenticationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of authentication. | [optional] 
**version** | **String** | The version of 3DS used to authenticate. | [optional] 
**params** | [**Secure3DAuthenticationResponseParams**](Secure3DAuthenticationResponseParams.md) |  | [optional] 
**secure3d_method** | [**Secure3DAuthenticationResponseSecure3dMethod**](Secure3DAuthenticationResponseSecure3dMethod.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3DAuthenticationResponse.new(type: 3D_SECURE,
                                 version: 2.1,
                                 params: null,
                                 secure3d_method: null)
```


