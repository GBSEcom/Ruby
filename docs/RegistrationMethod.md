# OpenapiClient::RegistrationMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method_type** | **String** | Unique ID for the payment method type. | 
**method_id** | **String** | The unique ID of this payment method if it was previously registered with a registration/method or if it is currently being registered. Must be unique for the entire system (not just within a specific merchant or industry). Mandatory if being used inside a registration/method. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that carries any additional information that might be helpful for fraud detection. | [optional] 
**billing_phone_number** | **String** | The address that should be used to send billing information for this payment method. | [optional] 
**method_alias** | **String** | The address that should be used to send billing information for this payment method. | [optional] 
**card** | [**FraudRegistrationCard**](FraudRegistrationCard.md) |  | 
**method_address** | [**FraudAddress**](FraudAddress.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RegistrationMethod.new(method_type: method/card,
                                 method_id: 300fa792-bf5f-418e-aa74-d5b3c81298d2,
                                 user_defined: {&quot;failedPinAttempts&quot;:3},
                                 billing_phone_number: 123456789,
                                 method_alias: card one,
                                 card: null,
                                 method_address: null)
```


