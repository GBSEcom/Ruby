# OpenapiClient::PaymentVerificationCvv

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | CVV response code. | 
**status** | **String** | Interpretation of the response code. | [optional] 
**scheme** | **String** | Identifier of the scheme. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentVerificationCvv.new(code: 7,
                                 status: approved,
                                 scheme: 9)
```


