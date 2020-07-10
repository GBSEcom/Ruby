# OpenapiClient::OrderResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | Required for some payment methods (for example, Klarna). | [optional] 
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OrderResponseAllOf.new(order_id: 123456,
                                 billing: null,
                                 shipping: null,
                                 transactions: [{&quot;transactionState&quot;:&quot;AUTHORIZED&quot;,&quot;ipgTransactionId&quot;:&quot;838916029301&quot;,&quot;transactionType&quot;:&quot;SALE&quot;,&quot;transactionAmount&quot;:{&quot;total&quot;:10.24,&quot;currency&quot;:&quot;USD&quot;},&quot;storeId&quot;:&quot;1109959991&quot;}],
                                 additional_details: null)
```


