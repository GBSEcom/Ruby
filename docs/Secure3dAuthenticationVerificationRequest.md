# OpenapiClient::Secure3dAuthenticationVerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payer_authentication_response** | **String** | A formatted message providing results of the issuer’s cardholder authentication. | 
**merchant_data** | **String** | Formatted string encoding transaction time, order ID, and return URL data. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3dAuthenticationVerificationRequest.new(payer_authentication_response: eJzVWFm....9f/AhjgEcE&#x3D;,
                                 merchant_data: MD__________30002019....85bcd02599)
```


