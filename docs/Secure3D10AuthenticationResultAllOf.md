# OpenapiClient::Secure3D10AuthenticationResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**verification_response** | **String** | Card enrollment result from the Verification Response (VeRes). | [optional] 
**authentication_attempt_result** | **String** | Result of authentication attempt from Payer Authentication Response (PaRes). | [optional] 
**cavv** | **String** | The Cardholder Authentication Verification Value (CAVV) is a cryptographic value derived by the issuer during payment authentication that can provide evidence of the results of payment authentication during an online purchase. | [optional] 
**xid** | **String** | The transaction identifier (XID) is a unique tracking number set by the merchant. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3D10AuthenticationResultAllOf.new(verification_response: N,
                                 authentication_attempt_result: Y,
                                 cavv: AAABCZIhcQAAAABZlyFxAAAAAAA,
                                 xid: MfhxI43NrkuWQYLCoRWitYRDMYo)
```


