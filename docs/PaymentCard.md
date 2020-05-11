# OpenapiClient::PaymentCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **String** | Payment card number. | 
**expiry_date** | [**Expiration**](Expiration.md) |  | [optional] 
**security_code** | **String** | Card verification value/number. | [optional] 
**card_function** | [**CardFunction**](CardFunction.md) |  | [optional] 
**cardholder_name** | **String** | Name of the cardholder. | [optional] 
**bin** | **String** | The payment card BIN. | [optional] 
**last4** | **String** | The last 4 numbers of a payment card. | [optional] 
**brand** | **String** | Required only if using dual branded card. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCard.new(number: 5424180279791732,
                                 expiry_date: null,
                                 security_code: 977,
                                 card_function: null,
                                 cardholder_name: John Doe,
                                 bin: 403587,
                                 last4: 4977,
                                 brand: VISA)
```


