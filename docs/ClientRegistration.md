# OpenapiClient::ClientRegistration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_ref** | **String** | Merchant reference code. Used by FirstAPI and reflected in settlement records and webhook notifications. Typically, the merchantRef field is the purchase order number or unique sequence value associated to a given transaction. | [optional] 
**transaction_type** | **String** | Type of transaction merchant wants to process. | 
**customer** | [**Customer**](Customer.md) |  | 
**merchant** | [**Merchant**](Merchant.md) |  | 
**device** | [**FraudRegistrationDevice**](FraudRegistrationDevice.md) |  | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information that might be helpful for fraud detection. | [optional] 
**original_transaction_type** | **String** | Defines the type of the original transaction that is being evaluated for the Fraud Score. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ClientRegistration.new(merchant_ref: ffd031516002,
                                 transaction_type: registration,
                                 customer: null,
                                 merchant: null,
                                 device: null,
                                 user_defined: {&quot;inauthTransId&quot;:&quot;1234&quot;},
                                 original_transaction_type: registration/client)
```


