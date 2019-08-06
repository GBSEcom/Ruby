# OpenapiClient::PaymentUrlResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**request_status** | **String** | Request status. If it is anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**payment_url** | **String** | URL for embedded payment link. | [optional] 
**transaction_id** | **String** | ID code from the transaction. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentUrlResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 request_status: SUCCESS,
                                 order_id: 123456,
                                 payment_url: https://api.firstdata.com/connect/gateway/processing?storename&#x3D;123456789&amp;oid&#x3D;R-96cdbaa4-c22e-4598-a2f1-c2b5fed79ef1&amp;paymentUrlId&#x3D;d3eb74fe-cf63-47e1-b89f-52ba0cc7965c,
                                 transaction_id: 123978432)
```


