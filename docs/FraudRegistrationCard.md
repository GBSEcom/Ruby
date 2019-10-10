# OpenapiClient::FraudRegistrationCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cardholder_name** | **String** | The cardholder name as it appears on the card. | [optional] 
**card_number** | **String** | Use this field to send clear PAN or tokens other than TransArmor Token. | [optional] 
**exp_date** | **String** | Payment method expiration date. Format is MMYYYY. | [optional] 
**cvv_present** | **String** | CVV present indicator. | [optional] 
**issuer** | **String** | The company (usually a bank) that issued the card. | [optional] 
**card_reissued_number** | **String** | A number that distinguishes between two plastic cards with the same card number in the event of the card being re-issued. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudRegistrationCard.new(cardholder_name: John F. Doe,
                                 card_number: 5424180279791732,
                                 exp_date: 122028,
                                 cvv_present: Y,
                                 issuer: Bank of America,
                                 card_reissued_number: 2)
```


