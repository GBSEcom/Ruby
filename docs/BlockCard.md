# OpenapiClient::BlockCard

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card_number** | **String** | Use this field to send clear PAN or tokens other than TransArmor Token. | [optional] 
**order_id** | **String** | Client order ID. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BlockCard.new(card_number: 5424180279791732,
                                 order_id: 123456,
                                 merchant_transaction_id: lsk23532djljff3)
```


