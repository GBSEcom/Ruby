# OpenapiClient::PaymentTokenizationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of tokenization request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | 
**account_verification** | **Boolean** | If the account should be verified prior to token creation. | [optional] [default to false]
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenizationRequest.new(request_type: PaymentCardPaymentTokenizationRequest,
                                 store_id: 12345500000,
                                 billing_address: null,
                                 create_token: null,
                                 account_verification: true,
                                 additional_details: null)
```


