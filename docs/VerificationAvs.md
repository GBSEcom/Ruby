# OpenapiClient::VerificationAvs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | AVS response code. | 
**status** | **String** | Interpretation of the response code. | [optional] 
**scheme** | **String** | Identifier of the scheme. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::VerificationAvs.new(code: +Z,
                                 status: zip match,
                                 scheme: amex)
```


