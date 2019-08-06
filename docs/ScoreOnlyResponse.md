# OpenapiClient::ScoreOnlyResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**api_trace_id** | **String** | Unique trace ID for issue triage. | [optional] 
**transaction_status** | **String** | Please refer to \&quot;Errors Section\&quot; for more info. | [optional] 
**validation_status** | **String** | If status returned is \&quot;failure\&quot;, input validation errors occurred. Please refer to the \&quot;Errors Section\&quot; for more info. Valid values are &#39;success&#39; and &#39;failure&#39;. | [optional] 
**transaction_type** | **String** | The transactionType provided in request. | [optional] 
**fraud_score** | [**ScoreOnlyResponseFraudScore**](ScoreOnlyResponseFraudScore.md) |  | [optional] 
**recommended_decision** | **String** | The action that should be taken for the request that was sent. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ScoreOnlyResponse.new(api_trace_id: 968a1915-210c-4157-a456-98e4773a1124,
                                 transaction_status: Not Processed,
                                 validation_status: success,
                                 transaction_type: transaction/authorization,
                                 fraud_score: null,
                                 recommended_decision: accept)
```


