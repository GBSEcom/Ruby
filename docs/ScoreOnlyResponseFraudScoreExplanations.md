# OpenapiClient::ScoreOnlyResponseFraudScoreExplanations

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the fraud score explanation. | [optional] 
**rule** | **String** | ID of the rule being triggered. | [optional] 
**type** | **String** | Type of the explanation (model or rule). | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ScoreOnlyResponseFraudScoreExplanations.new(description: Suspicious transaction amount.,
                                 rule: QSR_14,
                                 type: explanation/model)
```


