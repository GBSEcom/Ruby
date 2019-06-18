# OpenapiClient::Secure3dAuthenticationResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Indicates what kind of authentication scheme the merchant wants to use on the card. | 
**verification_response** | **String** | Card enrollment result from the Verification Response (VeRes). | [optional] 
**authentication_attempt_result** | **String** | Result of authentication attempt from Payer Authentication Response (PaRes). | [optional] 
**authentication_value** | **String** | The Cardholder Authentication Verification Value (CAVV) is a cryptographic value derived by the issuer during payment authentication that can provide evidence of the results of payment authentication during an online purchase. | [optional] 
**xid** | **String** | The transaction identifier (XID) is a unique tracking number set by the merchant. | [optional] 


