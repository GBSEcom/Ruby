# OpenapiClient::CardVerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardVerificationRequest.new(payment_card: null,
                                 billing_address: null,
                                 store_id: 12345500000)
```


