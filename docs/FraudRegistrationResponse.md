# OpenapiClient::FraudRegistrationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**correlation_id** | **String** | The value used to track the transaction. | [optional] 
**transaction_status** | **String** | Status of the transaction. Valid values are &#39;Not Processed&#39; and &#39;Scored successfully&#39; | [optional] 
**validation_status** | **String** | If status returned is \&quot;failure\&quot;, input validation errors occurred. Please refer to the \&quot;Errors Section\&quot; for more info. Valid values are &#39;success&#39; and &#39;failed&#39;. | [optional] 
**transaction_type** | **String** | The transactionType provided in request. | [optional] 
**fraud_score** | [**FraudScore**](FraudScore.md) |  | [optional] 
**error** | [**FraudRegistrationError**](FraudRegistrationError.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudRegistrationResponse.new(correlation_id: 228.6277057434761,
                                 transaction_status: Not Processed,
                                 validation_status: success,
                                 transaction_type: registration,
                                 fraud_score: null,
                                 error: null)
```


