# OpenapiClient::RecurringPaymentDetailsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | 
**ipg_transaction_id** | **String** | The response transaction ID | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID | [optional] 
**transaction_time** | **Integer** | The transaction time in seconds since Epoch | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**mandate** | [**SepaMandate**](SepaMandate.md) |  | [optional] 
**transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | Required for some payment methods (for example, Klarna) | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 
**recurring_payment_details** | [**RecurringPaymentDetails**](RecurringPaymentDetails.md) |  | [optional] 


