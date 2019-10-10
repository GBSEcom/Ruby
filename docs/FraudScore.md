# OpenapiClient::FraudScore

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**score** | **String** | The score attributed to this request by our machine learning system, ranging from 0 (less likely to be fraud) to 1000 (more likely to be fraud). | [optional] 
**warnings** | **Array&lt;String&gt;** | A list of non-critical warnings raised while processing the request. Warnings included in this list will have integration and data-quality related messages. | [optional] 
**explanations** | **Array&lt;Object&gt;** | Explanation of the fraud score applied consisting of a description, type of the explanation, and rule (if applicable). | [optional] 
**recommended_decision** | **String** | The score attributed to this request by our machine learning system, ranging from 0 (less likely to be fraud) to 1000 (more likely to be fraud). | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudScore.new(score: 1000,
                                 warnings: [&quot;warning1&quot;,&quot;warning2&quot;],
                                 explanations: null,
                                 recommended_decision: approve)
```


