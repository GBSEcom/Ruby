# OpenapiClient::PaymentTokenization

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**value** | **String** | Client supplied Payment Token value | [optional] 
**reusable** | **BOOLEAN** | One time or reusable token | [optional] [default to true]
**decline_duplicates** | **BOOLEAN** | Decline duplicate payment info if client token is supplied | [optional] [default to false]
**last4** | **String** | The last 4 payment card numbers | [optional] 
**brand** | **String** | Only for tokenization with payment | [optional] 
**country** | **String** | Only for tokenization with payment | [optional] 
**account_verification** | **BOOLEAN** |  | [optional] [default to false]
**security_code** | **String** | Card Verification Value/Number | [optional] 


