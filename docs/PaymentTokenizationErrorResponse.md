# OpenapiClient::PaymentTokenizationErrorResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**request_status** | **String** | The status of the request. | [optional] 
**request_time** | **Integer** | Time of the request. | [optional] 
**avs_response** | [**AVSResponse**](AVSResponse.md) |  | [optional] 
**security_code_response** | **String** | Security code check response. | [optional] 
**brand** | **String** | Card brand. | [optional] 
**country** | **String** | Country of the card issued. | [optional] 
**payment_token** | [**PaymentTokenDetails**](PaymentTokenDetails.md) |  | [optional] 
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | [optional] 
**error** | [**Error**](Error.md) |  | [optional] 


