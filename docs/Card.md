# OpenapiClient::Card

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ta_token** | **String** | TransArmor token value. Either the token fields or card number field must contain a value. | [optional] 
**ta_token_key** | **String** | TransArmor token key to identify the merchant. | [optional] 
**cardholder_name** | **String** | The cardholder name as it appears on the card. | [optional] 
**card_number** | **String** | Use this field to send clear PAN or tokens other than TransArmor Token. | [optional] 
**exp_date** | **String** | Payment method expiration date. Format is MMYYYY. | [optional] 
**cvv** | **String** | CVV present indicator. | [optional] 
**issuer** | **String** | The company (usually a bank) that issued the card. | [optional] 
**card_reissued_number** | **String** | A number that distinguishes between two plastic cards with the same card number in the event of the card being re-issued. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Card.new(ta_token: 7591787425749818,
                                 ta_token_key: ab56,
                                 cardholder_name: John F. Doe,
                                 card_number: 5424180279791732,
                                 exp_date: 122028,
                                 cvv: Y,
                                 issuer: Bank of America,
                                 card_reissued_number: 2)
```


