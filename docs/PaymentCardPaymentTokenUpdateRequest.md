# OpenapiClient::PaymentCardPaymentTokenUpdateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of tokenization request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**payment_tokens** | [**Array&lt;UpdatePaymentToken&gt;**](UpdatePaymentToken.md) | List of payment tokens to be updated in the request. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardPaymentTokenUpdateRequest.new(request_type: PaymentCardPaymentTokenUpdateRequest,
                                 store_id: 12345500000,
                                 payment_tokens: null)
```


