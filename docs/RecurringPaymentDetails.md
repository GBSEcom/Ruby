# OpenapiClient::RecurringPaymentDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | Store ID number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**creation_date** | **String** | Date recurring payment was created. | [optional] 
**start_date** | **String** | Date of mandate signature. | [optional] 
**next_attempt_date** | **String** | Date of next transaction process attempt. | [optional] 
**amount** | [**Amount**](Amount.md) |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**frequency** | [**Frequency**](Frequency.md) |  | [optional] 
**number_of_payments** | **Integer** | Number of times the recurring payment will process. | [optional] 
**run_count** | **Integer** | Times the recurring payment has already run. | [optional] 
**state** | **String** | State of the recurring payment. | [optional] 
**comments** | **String** | User supplied comments. | [optional] 


