# OpenapiClient::Secure3D21AuthenticationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cavv** | **String** | The Cardholder Authentication Verification Value (CAVV) is a cryptographic value derived by the issuer during payment authentication that can provide evidence of the results of payment authentication during an online purchase. | [optional] 
**xid** | **String** | The transaction identifier (XID) is a unique tracking number set by the merchant. | [optional] 
**transaction_id** | **String** | The response transaction UUID. Only applicable to MasterCard. | [optional] 
**authentication_response** | **String** | The result of authentication attempt returned by the 3D Secure authentication process (PaRes). | [optional] 
**transaction_status** | **String** | The transaction status as returned by the 3D Secure authentication process. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3D21AuthenticationResult.new(cavv: AAABCZIhcQAAAABZlyFxAAAAAAA,
                                 xid: MfhxI43NrkuWQYLCoRWitYRDMYo,
                                 transaction_id: f38e6948-5388-41a6-bca4-b49723c19437,
                                 authentication_response: A,
                                 transaction_status: A)
```


