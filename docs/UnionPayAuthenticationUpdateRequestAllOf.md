# OpenapiClient::UnionPayAuthenticationUpdateRequestAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sms_verification_code** | **String** | Customer mobile number for SMS verification. | 
**security_code** | **String** | Card security code if required by merchant. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UnionPayAuthenticationUpdateRequestAllOf.new(sms_verification_code: 111111,
                                 security_code: 123)
```


