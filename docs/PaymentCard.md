# OpenapiClient::PaymentCard

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **String** | Payment card number | [optional] 
**expiry_date** | [**Expiration**](Expiration.md) |  | [optional] 
**security_code** | **String** | Card Verification Value/Number | [optional] 
**payment_tokenization** | [**PaymentTokenization**](PaymentTokenization.md) |  | [optional] 
**card_function** | **String** | Card function. Optional, valid values are CREDIT or DEBIT. | [optional] 
**cardholder_name** | **String** | Name of the cardholder on the card | [optional] 
**authentication_request** | [**AuthenticationRequest**](AuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**PaymentCardAuthenticationResult**](PaymentCardAuthenticationResult.md) |  | [optional] 
**bin** | **String** | The payment card BIN | [optional] 
**last4** | **String** | The last 4 payment card numbers | [optional] 
**brand** | **String** | Optional, required only if using dual branded card | [optional] 
**issuing_country** | **String** | The issuing country | [optional] 


