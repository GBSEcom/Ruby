# OpenapiClient::CardInfoLookupResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**card_details** | [**Array&lt;CardInfo&gt;**](CardInfo.md) | One or more card information retrieved based on BIN. | [optional] 
**request_status** | **String** | Request status. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardInfoLookupResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 card_details: [{&quot;brand&quot;:&quot;VISA&quot;,&quot;brandProductId&quot;:&quot;VISA BUSINESS&quot;,&quot;cardFunction&quot;:&quot;credit&quot;,&quot;commercialCard&quot;:&quot;CORPORATE&quot;,&quot;issuerCountry&quot;:&quot;DE&quot;,&quot;issuerName&quot;:&quot;First National Bank of Omaha&quot;}],
                                 request_status: SUCCESS)
```


