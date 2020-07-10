# OpenapiClient::UpdatePaymentToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | Client-supplied payment token value. | 
**reusable** | **Boolean** | If the token is reusable. | [optional] [default to true]
**decline_duplicates** | **Boolean** | Decline duplicate payment info if client token is supplied. | [optional] [default to false]
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UpdatePaymentToken.new(value: 234ljl124l12,
                                 reusable: true,
                                 decline_duplicates: false,
                                 payment_card: null)
```


