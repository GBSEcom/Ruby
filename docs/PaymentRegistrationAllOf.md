# OpenapiClient::PaymentRegistrationAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**original_transaction_type** | **String** | Defines the type of the original transaction that is being evaluated for the Fraud Score. | [optional] 
**issuer_response** | [**IssuerResponse**](IssuerResponse.md) |  | [optional] 
**verification_avs** | [**VerificationAvs**](VerificationAvs.md) |  | [optional] 
**verification3ds** | [**Verification3ds**](Verification3ds.md) |  | [optional] 
**verification_cvv** | [**VerificationCvv**](VerificationCvv.md) |  | [optional] 
**registration_method** | [**RegistrationMethod**](RegistrationMethod.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentRegistrationAllOf.new(original_transaction_type: registration/method/card,
                                 issuer_response: null,
                                 verification_avs: null,
                                 verification3ds: null,
                                 verification_cvv: null,
                                 registration_method: null)
```


