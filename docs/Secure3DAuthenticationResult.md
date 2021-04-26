# OpenapiClient::Secure3DAuthenticationResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cavv** | **String** | The Cardholder Authentication Verification Value (CAVV) is a cryptographic value derived by the issuer during payment authentication that can provide evidence of the results of payment authentication during an online purchase. | [optional] 
**xid** | **String** | The transaction identifier (XID) is a unique tracking number set by the merchant. | [optional] 
**ds_transaction_id** | **String** | The response transaction UUID from the DS (directory server) | [optional] 
**authentication_response** | **String** | The result of authentication attempt returned by the 3D Secure authentication process (ARes). | [optional] 
**transaction_status** | **String** | The transaction status as returned by the 3D Secure authentication process. (CRes) | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3DAuthenticationResult.new(cavv: AAABCZIhcQAAAABZlyFxAAAAAAA,
                                 xid: MfhxI43NrkuWQYLCoRWitYRDMYo,
                                 ds_transaction_id: f38e6948-5388-41a6-bca4-b49723c19437,
                                 authentication_response: A,
                                 transaction_status: A)
```


