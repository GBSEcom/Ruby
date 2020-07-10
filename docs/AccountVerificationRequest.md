# OpenapiClient::AccountVerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the account verification request. | 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccountVerificationRequest.new(request_type: PaymentCardVerificationRequest,
                                 billing_address: null,
                                 store_id: 12345500000,
                                 additional_details: null)
```


