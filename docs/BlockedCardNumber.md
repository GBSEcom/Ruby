# OpenapiClient::BlockedCardNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card_number** | **String** | Use this field to send clear PAN or tokens other than TransArmor Token. | [optional] 
**token_identifier** | **String** | Token identifier. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BlockedCardNumber.new(card_number: 5424180279791732,
                                 token_identifier: 00ef9c73d065da1e01b9439998aca5cd6c73ff178660570c8743ed2e4a700f56)
```


