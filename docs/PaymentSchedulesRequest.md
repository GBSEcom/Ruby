# SwaggerClient::PaymentSchedulesRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | Store ID number. | [optional] 
**reference_order_id** | **String** | Order ID used to create recurring payment from existing transaction. | [optional] 
**start_date** | **Date** | Date of mandate signature. | [optional] 
**number_of_payments** | **Integer** | Number of times the recurring payment will process. | [optional] 
**maximum_failures** | **Integer** | Number of failures that can be encountered before re-tries cease. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**po_number** | **String** | Purchase order number. | [optional] 
**transaction_origin** | **String** | The source of the transaction. The possible values are ECI (if the order was received via email or Internet), MOTO (mail order / telephone order) and RETAIL (face to face). | [optional] 
**dynamic_merchant_name** | **String** | Dynamic merchant name for the cardholder‘s statement. | [optional] 
**frequency** | [**Frequency**](Frequency.md) |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**amount** | [**Amount**](Amount.md) |  | [optional] 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 
**order_id** | **String** | Client Order ID if supplied by client. | [optional] 


