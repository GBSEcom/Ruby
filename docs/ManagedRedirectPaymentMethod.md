# OpenapiClient::ManagedRedirectPaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method_type** | **String** | Payment Method Type Enum | [optional] 
**payment_details** | [**Array&lt;ManagedRedirectPaymentMethodPaymentDetails&gt;**](ManagedRedirectPaymentMethodPaymentDetails.md) | Key Value pairs of Payment detail appropriate for the Payment Method Type | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ManagedRedirectPaymentMethod.new(payment_method_type: null,
                                 payment_details: null)
```


