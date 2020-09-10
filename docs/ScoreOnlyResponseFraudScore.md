# OpenapiClient::ScoreOnlyResponseFraudScore

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**score** | **String** | The score attributed to this request by our machine learning system, ranging from 0 (less likely to be fraud) to 1000 (more likely to be fraud). | [optional] 
**warnings** | **Array&lt;String&gt;** | A list of non-critical warnings raised while processing the request. Warnings included in this list will have integration and data-quality related messages. | [optional] 
**explanations** | [**Array&lt;ScoreOnlyResponseFraudScoreExplanations&gt;**](ScoreOnlyResponseFraudScoreExplanations.md) | Explanation of the fraud score applied consisting of a description, type of the explanation, and rule (if applicable). | [optional] 
**recommended_decision** | **String** | The action that should be taken for the request that was sent. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ScoreOnlyResponseFraudScore.new(score: 1000,
                                 warnings: [&quot;warning1&quot;,&quot;warning2&quot;],
                                 explanations: [{&quot;description&quot;:&quot;Suspicious transaction amount.&quot;,&quot;type&quot;:&quot;explanation/model&quot;},{&quot;description&quot;:&quot;Suspicious pattern compared to number of transactions in the past 1 month for the card.&quot;,&quot;type&quot;:&quot;explanation/rule&quot;,&quot;rule&quot;:&quot;QSR_14&quot;}],
                                 recommended_decision: accept)
```


