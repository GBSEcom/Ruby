# OpenapiClient::ApmPaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**PaymentMethodType**](PaymentMethodType.md) |  | 
**steps** | [**Array&lt;PaymentStepResponse&gt;**](PaymentStepResponse.md) | All steps (already) performed on the payment | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ApmPaymentMethod.new(type: null,
                                 steps: null)
```


