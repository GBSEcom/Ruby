# OpenapiClient::CardInfoLookupResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**card_details** | [**Array&lt;CardInfo&gt;**](CardInfo.md) | One or more card information retrieved based on BIN. | [optional] 
**request_status** | **String** | Request status. | [optional] 


