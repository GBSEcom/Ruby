# OpenapiClient::ExchangeRateResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**ipg_transaction_id** | **String** | The response transaction ID. | [optional] 
**request_time** | **String** | Time of the request. The used format is \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX\&quot;. | [optional] 
**exchange_rate_details** | [**ExchangeRateDetails**](ExchangeRateDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ExchangeRateResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 ipg_transaction_id: 838916029301,
                                 request_time: 2018-12-05T14:13:00.000-05:00,
                                 exchange_rate_details: null)
```


