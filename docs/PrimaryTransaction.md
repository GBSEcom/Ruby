# OpenapiClient::PrimaryTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the primary transaction request. | 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID from the request header, if supplied. | [optional] 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 
**allow_partial_approval** | **Boolean** | Indicates if the particular transaction is a partial approval transaction, if supplied. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PrimaryTransaction.new(request_type: PaymentCardCreditTransaction,
                                 transaction_amount: null,
                                 store_id: 12345500000,
                                 merchant_transaction_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 transaction_origin: null,
                                 order: null,
                                 allow_partial_approval: true)
```


