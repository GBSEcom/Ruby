# OpenapiClient::PaymentTokenDetailsAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**last4** | **String** | The last 4 numbers of a payment card. | [optional] 
**brand** | **String** | Card brand, only for tokenization with payment. | [optional] 
**account_verification** | **Boolean** | If the account the token was created from has been verified. | [optional] 
**type** | **String** | Inidcates the type of tokenization source. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenDetailsAllOf.new(last4: 4997,
                                 brand: VISA,
                                 account_verification: true,
                                 type: PAYMENT_CARD)
```


