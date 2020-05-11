# OpenapiClient::InitiateClearingResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **String** | Request status. If it is anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**clearing_details** | [**ClearingDetails**](ClearingDetails.md) |  | [optional] 
**endpoint_responses** | [**Array&lt;EndpointResponse&gt;**](EndpointResponse.md) | The array holds response information of the involved endpoints. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::InitiateClearingResponseAllOf.new(request_status: SUCCESS,
                                 clearing_details: null,
                                 endpoint_responses: null)
```


