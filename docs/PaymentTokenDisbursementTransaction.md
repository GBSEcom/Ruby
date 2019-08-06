# OpenapiClient::PaymentTokenDisbursementTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disbursement** | [**Disbursement**](Disbursement.md) |  | 
**payment_method** | [**PaymentTokenPaymentMethod**](PaymentTokenPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenDisbursementTransaction.new(disbursement: null,
                                 payment_method: null,
                                 stored_credentials: null)
```


