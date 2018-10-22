# SwaggerClient::PaymentCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **String** | Payment card number | 
**expiry_date** | [**Expiration**](Expiration.md) |  | [optional] 
**security_code** | **String** | CVV | [optional] 
**card_function** | **String** |  | [optional] [default to &quot;CREDIT&quot;]
**cardholder_name** | **String** |  | [optional] 
**authentication_request** | [**PaymentCardAuthenticationRequest**](PaymentCardAuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**PaymentCardAuthenticationResult**](PaymentCardAuthenticationResult.md) |  | [optional] 
**brand** | **String** | Optional, required only if using dual branded card | [optional] 


