# OpenapiClient::Payment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_type** | **String** | Defines the type of the payment. | 
**pay_method** | [**PaymentPayMethod**](PaymentPayMethod.md) |  | 
**pin_present** | **Boolean** | Indicates if the cards Personal Identification Number was supplied. | 
**entry_method** | **String** | The method in which the card information entered the system. | 
**issuer_response** | [**PaymentIssuerResponse**](PaymentIssuerResponse.md) |  | [optional] 
**issuer_approved_amount** | **String** | The actual approved amount. This field should be filled in when the message has already passed through the issuer (e.g. post-authorization). For transaction/authorization this amount refers to the amount that was locked on the card-holders account. | [optional] 
**issuer_card_balance** | **String** | The payment methods account balance if available. This field should be filled in when the message has already passed through the issuer (e.g. post-authorization). | [optional] 
**verification_avs** | [**PaymentVerificationAvs**](PaymentVerificationAvs.md) |  | [optional] 
**verification3ds** | [**PaymentVerification3ds**](PaymentVerification3ds.md) |  | [optional] 
**verification_cvv** | [**PaymentVerificationCvv**](PaymentVerificationCvv.md) |  | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that carries any additional information that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Payment.new(payment_type: payment/card,
                                 pay_method: null,
                                 pin_present: true,
                                 entry_method: remote,
                                 issuer_response: null,
                                 issuer_approved_amount: 1234,
                                 issuer_card_balance: 2000,
                                 verification_avs: null,
                                 verification3ds: null,
                                 verification_cvv: null,
                                 user_defined: {&quot;failedPinAttempts&quot;:3})
```


