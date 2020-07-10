# OpenapiClient::PaymentTokenizationResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **String** | The status of the request. | [optional] 
**request_time** | **Integer** | Time of the request. | [optional] 
**brand** | **String** | Card brand. | [optional] 
**country** | **String** | Country of the card issued. | [optional] 
**payment_token** | [**PaymentTokenDetails**](PaymentTokenDetails.md) |  | [optional] 
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenizationResponseAllOf.new(request_status: DELETED,
                                 request_time: 1554308829345,
                                 brand: VISA,
                                 country: Germany,
                                 payment_token: null,
                                 payment_card: null,
                                 processor: null,
                                 order_id: R-44df6542-ae0b-4415-88e8-7f3e62cc9e5d)
```


