# OpenapiClient::ReferencedOrderPaymentSchedulesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the payment schedules request. | 
**store_id** | **String** | Store ID number. | [optional] 
**start_date** | **Date** | Date of mandate signature. | 
**number_of_payments** | **Integer** | Number of times the recurring payment will process. | [optional] 
**maximum_failures** | **Integer** | Number of failures that can be encountered before re-tries cease. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**dynamic_merchant_name** | **String** | Dynamic merchant name for the cardholder&#39;s statement. | [optional] 
**frequency** | [**Frequency**](Frequency.md) |  | 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 
**order_id** | **String** | Client order ID if supplied by client. | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**comments** | **String** | User supplied comments. | [optional] 
**referenced_order_id** | **String** | Order ID used to create recurring payment from existing transaction. | 


