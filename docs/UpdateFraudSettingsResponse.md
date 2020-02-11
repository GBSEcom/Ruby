# OpenapiClient::UpdateFraudSettingsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**stores** | [**Array&lt;StoreFraudSettingsResult&gt;**](StoreFraudSettingsResult.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UpdateFraudSettingsResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 stores: [{&quot;id&quot;:&quot;12345500000&quot;,&quot;blockedCardIdentifier&quot;:{&quot;tokenIdentifier&quot;:&quot;570e66b0d4fd91b27155a36911220e0e98d0db7e22fcf0b86544fdf175c707d0&quot;},&quot;status&quot;:&quot;SUCCESS. Fraud settings was updated successfully.&quot;},{&quot;id&quot;:&quot;1234550000044&quot;,&quot;blockedCardIdentifier&quot;:{&quot;tokenIdentifier&quot;:&quot;8535993dsrfs9898fssdfgddse9898fv9dfu8f98d0db7e22fcf0b86544fdf178&quot;},&quot;status&quot;:&quot;SUCCESS. Fraud settings was updated successfully.&quot;}])
```


