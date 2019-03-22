# OpenapiClient::ScoreOnlyRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_ref** | **String** | Merchant reference code. Used by FirstAPI and reflected in settlement records and Webhook notifications. Typically, the merchantRef field is the purchase order number or unique sequence value associated to a given transaction. | [optional] 
**transaction_type** | **String** | Type of transaction merchant wants to process. | 
**original_transaction_type** | **String** | Defines the type of the original transaction that is being evaluated for the Fraud Score. | 
**original_transaction_id** | **String** | The unique ID of this transaction. Must be unique for the entire system (not just within a specific merchant or industry). Subsequent requests related to the same transaction must have the same transactionId (e.g. transaction/deposit or   transaction/authorization-reversal). This field is used formatching transactions with settlement and chargeback information. If there is no such ID available you may wish to compose one from fields available in both systems. Consider including backend, issuer, merchant id, date and time, amount, etc. as necessary. | 
**amount** | **String** | The amount processed for the original transaction. | 
**currency_code** | **String** | The currency of the original transaction. | 
**customer** | [**Customer**](Customer.md) |  | [optional] 
**billing_address** | [**BillingAddress**](BillingAddress.md) |  | [optional] 
**device** | [**Device**](Device.md) |  | [optional] 
**loyalty** | [**Loyalty**](Loyalty.md) |  | [optional] 
**payment** | [**Payment**](Payment.md) |  | 
**merchant** | [**Merchant**](Merchant.md) |  | 
**order** | [**FraudOrder**](FraudOrder.md) |  | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information that might be helpful for fraud detection. | [optional] 


