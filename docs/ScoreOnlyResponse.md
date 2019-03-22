# OpenapiClient::ScoreOnlyResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_trace_id** | **String** | Unique trace ID for issue triage | [optional] 
**transaction_status** | **String** | Please refer to \&quot;Errors Section\&quot; for more info. | [optional] 
**validation_status** | **String** | If status returned is \&quot;failure\&quot;, input validation errors occurred. Please refer to the \&quot;Errors Section\&quot; for more info. | [optional] 
**transaction_type** | **String** | The transactionType provided in request. | [optional] 
**fraud_score** | [**ScoreOnlyResponseFraudScore**](ScoreOnlyResponseFraudScore.md) |  | [optional] 
**recommended_decision** | **String** |  | [optional] 


