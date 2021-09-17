# OpenapiClient::StandinResponseDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secure3_d_enrolment_status** | **String** | Secure 3D Enrolment Status. | [optional] 
**secure3_deci** | **String** | Secure 3D ECI. | [optional] 
**secure3_d_authentication_response** | **String** | Secure 3D Authentication Response. | [optional] 
**authentication_value** | **String** | Secure 3D Authentication Value. | [optional] 
**xid** | **String** | Secure 3D XID. | [optional] 
**authentication_algorithm** | **String** | Secure 3D Authentication Algorithm. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StandinResponseDetails.new(secure3_d_enrolment_status: Y,
                                 secure3_deci: 05,
                                 secure3_d_authentication_response: Y,
                                 authentication_value: AAABBgFWUQAAAAEzZ1ZRAAAAAAA&#x3D;,
                                 xid: cb8QZ9mmkTUqreE89RjjjAtpJpg,
                                 authentication_algorithm: 2)
```


