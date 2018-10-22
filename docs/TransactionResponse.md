# SwaggerClient::TransactionResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_type** | [**ResponseType**](ResponseType.md) | The schema type returned in the response. | [optional] 
**client_request_id** | **String** | Echoes back the value in the Request header | [optional] 
**api_trace_id** | **String** | Echoes back the value in the Request header | [optional] 
**ipg_transaction_id** | **String** | The Response Transaction ID | [optional] 
**order_id** | **String** | Client Order ID if supplied by client, otherwise the Order ID | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**authorization_code** | **String** | The processor approval code for compliance. | [optional] 
**avs_response** | **String** | The processor address validation response for compliance. | [optional] 
**security_code_response** | **String** | The processor card verification validation response for compliance. | [optional] 
**brand** | **String** | Card brand of the payment instrument | [optional] 
**country** | **String** | Country of the card issuer | [optional] 
**terminal_id** | **String** | The terminal that is processing the transaction | [optional] 
**client_transaction_id** | **String** | The unique client Transaction ID from the Request header, if supplied | [optional] 
**transaction_time** | **Integer** | The transaction time in seconds since Epoch | [optional] 
**approved_amount** | [**Amount**](Amount.md) |  | [optional] 
**transaction_status** | **String** | The status of the transaction. APPROVED/WAITING are returned by the endpoints.  VALIDATION_FAILED/DECLINED are errors. See ErrorResponse object for details. | [optional] 
**transaction_state** | **String** | The state of the transaction. | [optional] 
**authentication_redirect** | [**TransactionResponseAuthenticationRedirect**](TransactionResponseAuthenticationRedirect.md) |  | [optional] 
**scheme_transaction_id** | **String** | The transaction id received from schemes for the initial transaction, returned for the transactions marked as \&quot;FIRST\&quot; | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 


