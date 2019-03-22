# OpenapiClient::PaymentUrlErrorResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | 
**request_status** | **String** | Request status. If it is anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**order_id** | **String** | Client Order ID if supplied by client, otherwise the Order ID. | [optional] 
**payment_url** | **String** | URL for embedded payment link | [optional] 
**transaction_id** | **String** | ID code from the transaction. | [optional] 
**error** | [**Error**](Error.md) |  | [optional] 


