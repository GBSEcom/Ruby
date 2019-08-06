# OpenapiClient::PaymentCardDisbursementTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disbursement** | [**Disbursement**](Disbursement.md) |  | 
**payment_method** | [**PaymentCardPaymentMethod**](PaymentCardPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardDisbursementTransaction.new(disbursement: null,
                                 payment_method: null,
                                 stored_credentials: null,
                                 create_token: null)
```


