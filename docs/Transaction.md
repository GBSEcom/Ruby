# OpenapiClient::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_state** | **String** | The state of the transaction. | [optional] 
**ipg_transaction_id** | **String** | The transaction ID. | [optional] 
**order_id** | **String** | Client order ID if supplied by client. | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**payment_method_details** | [**PaymentMethodDetails**](PaymentMethodDetails.md) |  | [optional] 
**transaction_amount** | [**Amount**](Amount.md) |  | [optional] 
**submission_component** | **String** | The submission component. | [optional] 
**payer_security_level** | **String** | The payer security level. | [optional] 
**transaction_time** | **Integer** | The transaction time in seconds since epoch. | [optional] 
**store_id** | **String** | Store ID number. | [optional] 
**user_id** | **String** | The user ID. | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 


