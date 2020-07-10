# OpenapiClient::PaymentUrlResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **String** | Request status. If it is anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**payment_url** | **String** | URL for embedded payment link. | [optional] 
**transaction_id** | **String** | ID code from the transaction. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentUrlResponseAllOf.new(request_status: SUCCESS,
                                 order_id: 123456,
                                 payment_url: https://api.firstdata.com/connect/gateway/processing?storename&#x3D;123456789&amp;oid&#x3D;R-96cdbaa4-c22e-4598-a2f1-c2b5fed79ef1&amp;paymentUrlId&#x3D;d3eb74fe-cf63-47e1-b89f-52ba0cc7965c,
                                 transaction_id: 123978432)
```


