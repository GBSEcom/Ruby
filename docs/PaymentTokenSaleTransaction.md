# OpenapiClient::PaymentTokenSaleTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the primary transaction request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID from the request header, if supplied. | [optional] 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 
**payment_method** | [**PaymentTokenPaymentMethod**](PaymentTokenPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**currency_conversion** | [**CurrencyConversion**](CurrencyConversion.md) |  | [optional] 

