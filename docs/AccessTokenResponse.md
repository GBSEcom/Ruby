# OpenapiClient::AccessTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**token_id** | **String** | Access token for authentication. | [optional] 
**status** | **String** | The token status. | [optional] 
**issued_on** | **String** | Access token issued time in milliseconds. | [optional] 
**expires_in_seconds** | **String** | Access token expiration time. | [optional] 
**public_key_base64** | **String** | Public key to encrypt data. | [optional] 
**algorithm** | **String** | Encyption algorithym. One way ECDH 256 bit key. | [optional] 
**client_request_id** | **String** | Echoes back the value from the request header for tracking. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccessTokenResponse.new(token_id: gliF92ypj9cKRWUP8lpRIbI3bhNf,
                                 status: ACTIVE,
                                 issued_on: 1579021570941,
                                 expires_in_seconds: 899,
                                 public_key_base64: LS0tLS1CRUdJTiBQLbnFSNXRnVmc4U08LS1FTkQgUFVCTElDIEtFWS0tLS0t,
                                 algorithm: RSA/NONE/PKCS1PADDING,
                                 client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66)
```


