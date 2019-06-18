# OpenapiClient::StoredCredential

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence** | **String** | Indicates if the transaction is first or subsequent. Valid values are &#39;FIRST&#39; and &#39;SUBSEQUENT&#39;. | 
**scheduled** | **BOOLEAN** | Indicates if the transaction is scheduled or part of an installment. | 
**referenced_scheme_transaction_id** | **String** | The transaction ID received from schemes for the initial transaction. Required if sequence is &#39;SUBSEQUENT&#39;. | [optional] 
**initiator** | **String** | Indicates whether it is a merchant-initiated or explicitly consented to by card holder. Valid values are &#39;MERCHANT&#39; and &#39;CARDHOLDER&#39;. | [optional] 


