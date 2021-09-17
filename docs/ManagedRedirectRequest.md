# OpenapiClient::ManagedRedirectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_amount** | [**Amount**](Amount.md) |  | 
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID from the request, if supplied. | [optional] 
**transaction_type** | [**ManagedRedirectTransactionType**](ManagedRedirectTransactionType.md) |  | 
**order** | [**Order**](Order.md) |  | [optional] 
**redirect_attributes** | [**RedirectAttributes**](RedirectAttributes.md) |  | [optional] 
**payment_method** | [**Object**](.md) | Various payment methods the Gateway supports. Abstract class, do not use this class directly, use one of its children. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ManagedRedirectRequest.new(transaction_amount: null,
                                 store_id: 12345500000,
                                 merchant_transaction_id: lsk23532djljff3,
                                 transaction_type: null,
                                 order: null,
                                 redirect_attributes: null,
                                 payment_method: null)
```


