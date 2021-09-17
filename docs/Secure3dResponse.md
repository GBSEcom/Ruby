# OpenapiClient::Secure3dResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_code3d_secure** | **String** | Code received after successful payer-auth verification. | [optional] 
**cardholder_info** | **String** | The cardholder&#39;s information supplied by the ACS. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3dResponse.new(response_code3d_secure: 3,
                                 cardholder_info: molestie nunc non blandit massa)
```


