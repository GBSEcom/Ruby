# OpenapiClient::PaymentTokenizationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
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

instance = OpenapiClient::PaymentTokenizationResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 request_status: DELETED,
                                 request_time: 1554308829345,
                                 brand: VISA,
                                 country: Germany,
                                 payment_token: null,
                                 payment_card: null,
                                 processor: null,
                                 order_id: R-44df6542-ae0b-4415-88e8-7f3e62cc9e5d)
```


