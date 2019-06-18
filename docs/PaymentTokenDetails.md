# OpenapiClient::PaymentTokenDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | Client-supplied payment token value. Only applicable for DataVault tokenization scheme. | [optional] 
**reusable** | **BOOLEAN** | If the token is reusable. | [optional] [default to true]
**decline_duplicates** | **BOOLEAN** | Decline duplicate payment info if client token is supplied. | [optional] [default to false]
**last4** | **String** | The last 4 numbers of a payment card. | [optional] 
**brand** | **String** | Card brand, only for tokenization with payment. | [optional] 
**account_verification** | **BOOLEAN** | If the account the token was created from has been verified. | [optional] 
**type** | **String** | Inidcates the type of tokenization source. | [optional] 


