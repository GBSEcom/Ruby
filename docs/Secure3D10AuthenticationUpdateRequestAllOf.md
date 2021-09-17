# OpenapiClient::Secure3D10AuthenticationUpdateRequestAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payer_authentication_response** | **String** | A formatted message providing results of the issuer’s cardholder authentication. | 
**merchant_data** | **String** | Formatted string encoding transaction time, order ID, and return URL data. | [optional] 
**security_code** | **String** | Card security code if required by merchant. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3D10AuthenticationUpdateRequestAllOf.new(payer_authentication_response: eJzVWFm....9f/AhjgEcE&#x3D;,
                                 merchant_data: MD__________30002019....85bcd02599,
                                 security_code: 123)
```


