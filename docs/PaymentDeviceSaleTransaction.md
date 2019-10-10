# OpenapiClient::PaymentDeviceSaleTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentDevicePaymentMethod**](PaymentDevicePaymentMethod.md) |  | 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentDeviceSaleTransaction.new(payment_method: null,
                                 create_token: null,
                                 stored_credentials: null)
```


