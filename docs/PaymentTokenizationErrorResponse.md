# OpenapiClient::PaymentTokenizationErrorResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Echoes back the value in the request header. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | 
**request_status** | **String** | The status of the request | [optional] 
**request_time** | **String** | Time of the request | [optional] 
**avs_response** | [**AVSResponse**](AVSResponse.md) |  | [optional] 
**security_code_response** | **String** | Optional security code check response | [optional] 
**brand** | **String** | Card brand | [optional] 
**country** | **String** | Country of the card issued | [optional] 
**payment_token** | [**PaymentTokenization**](PaymentTokenization.md) |  | [optional] 
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | [optional] 
**error** | [**Error**](Error.md) |  | [optional] 


