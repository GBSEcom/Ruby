# OpenapiClient::SharedSecretConfigurationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**shared_secret** | **String** | Shared secret/password for Connect. | [optional] 
**response_message** | **String** | The message/status received after updating shared secret service config. | [optional] 
**response_timestamp** | **Integer** | Response timestamp. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SharedSecretConfigurationResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 store_id: 12345500000,
                                 shared_secret: 6768tr457r,
                                 response_message: SUCCESS,
                                 response_timestamp: 1561035070)
```


