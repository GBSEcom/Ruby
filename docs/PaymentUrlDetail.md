# OpenapiClient::PaymentUrlDetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_url** | **String** | URL for embedded payment link. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID from the request, if supplied. | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**request_time** | **Integer** | The transaction time in seconds since epoch. | [optional] 
**status** | [**PaymentUrlStatus**](PaymentUrlStatus.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentUrlDetail.new(payment_url: https://api.firstdata.com/connect/gateway/processing?storename&#x3D;123456789&amp;oid&#x3D;R-96cdbaa4-c22e-4598-a2f1-c2b5fed79ef1&amp;paymentUrlId&#x3D;d3eb74fe-cf63-47e1-b89f-52ba0cc7965c,
                                 merchant_transaction_id: lsk23532djljff3,
                                 order_id: 123456,
                                 request_time: 1518811817,
                                 status: null)
```


