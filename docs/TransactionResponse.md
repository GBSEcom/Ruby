# OpenapiClient::TransactionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | 
**ipg_transaction_id** | **String** | The Response Transaction ID | [optional] 
**order_id** | **String** | Client Order ID if supplied by client, otherwise the Order ID | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**payment_token** | [**PaymentTokenization**](PaymentTokenization.md) |  | [optional] 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | [optional] 
**country** | **String** | Country of the card issuer | [optional] 
**terminal_id** | **String** | The terminal that is processing the transaction | [optional] 
**merchant_transaction_id** | **String** | The unique merchant Transaction ID from the Request header, if supplied | [optional] 
**transaction_time** | **Integer** | The transaction time in seconds since Epoch | [optional] 
**approved_amount** | [**Amount**](Amount.md) |  | [optional] 
**transaction_status** | **String** | The status of the transaction. APPROVED/WAITING are returned by the endpoints.  VALIDATION_FAILED/DECLINED are errors. See ErrorResponse object for details. | [optional] 
**transaction_state** | **String** | The state of the transaction. | [optional] 
**secure3d_response** | [**Secure3dResponse**](Secure3dResponse.md) |  | [optional] 
**redirect_url** | **String** | The endpoint redirection URL. | [optional] 
**authentication_redirect** | **Object** |  | [optional] 
**scheme_transaction_id** | **String** | The transaction ID received from schemes for the initial transaction of card on file flows. | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 
**additional_details** | [**AdditionalTransactionDetails**](AdditionalTransactionDetails.md) |  | [optional] 


