# OpenapiClient::InitiateClearingResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**request_status** | **String** | Request status. If it is anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**clearing_details** | [**ClearingDetails**](ClearingDetails.md) |  | [optional] 
**endpoint_responses** | [**Array&lt;EndpointResponse&gt;**](EndpointResponse.md) | The array holds response information of the involved endpoints. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InitiateClearingResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 request_status: SUCCESS,
                                 clearing_details: null,
                                 endpoint_responses: null)
```


