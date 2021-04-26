# OpenapiClient::TransactionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**ipg_transaction_id** | **String** | The response transaction ID. | [optional] 
**order_id** | **String** | Note - Client Order ID if supplied by client. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM). | [optional] 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | [optional] 
**payment_token** | [**PaymentTokenDetails**](PaymentTokenDetails.md) |  | [optional] 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**payment_method_details** | [**PaymentMethodDetails**](PaymentMethodDetails.md) |  | [optional] 
**country** | **String** | Country of the card issuer. | [optional] 
**terminal_id** | **String** | The terminal that is processing the transaction. | [optional] 
**merchant_id** | **String** | The unique (on Acquirer level) mechant ID. Usually this value has been chosen from the merchant itself and will be used in communication with the endpoint. | [optional] 
**merchant_transaction_id** | **String** | The unique merchant transaction ID from the request header, if supplied. | [optional] 
**transaction_time** | **Integer** | The transaction time in seconds since epoch. | [optional] 
**approved_amount** | [**Amount**](Amount.md) |  | [optional] 
**transaction_status** | **String** | Represents the status of a transaction immediately following the original processing request. This value is not stored for the transaction and is only available in the response when the transaction is processed. TransactionStatus is not returned on either the transaction inquiry or on the order inquiry. | [optional] 
**transaction_state** | **String** | Shows the state of the current transaction. | [optional] 
**secure3d_response** | [**Secure3dResponse**](Secure3dResponse.md) |  | [optional] 
**redirect_url** | **String** | The endpoint redirection URL. | [optional] 
**authentication_response** | [**Secure3DAuthenticationResponse**](Secure3DAuthenticationResponse.md) |  | [optional] 
**scheme_transaction_id** | **String** | The transaction ID received from schemes for the initial transaction of card on file flows. | [optional] 
**processor** | [**ProcessorData**](ProcessorData.md) |  | [optional] 
**additional_details** | [**AdditionalTransactionDetails**](AdditionalTransactionDetails.md) |  | [optional] 
**account_updater_response** | [**AccountUpdaterResponse**](AccountUpdaterResponse.md) |  | [optional] 
**ach_response** | [**AchResponse**](AchResponse.md) |  | [optional] 
**currency_conversion_response** | [**CurrencyConversionResponse**](CurrencyConversionResponse.md) |  | [optional] 
**steps** | [**Array&lt;PaymentStepRequest&gt;**](PaymentStepRequest.md) | Steps to be performed by the payer. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TransactionResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 ipg_transaction_id: 838916029301,
                                 order_id: 123456,
                                 transaction_type: null,
                                 payment_token: null,
                                 transaction_origin: null,
                                 payment_method_details: null,
                                 country: USA,
                                 terminal_id: 123456,
                                 merchant_id: 199950008,
                                 merchant_transaction_id: lsk23532djljff3,
                                 transaction_time: 1518811817,
                                 approved_amount: null,
                                 transaction_status: APPROVED,
                                 transaction_state: AUTHORIZED,
                                 secure3d_response: null,
                                 redirect_url: http://pay.issuer-bank.com/sessionID&#x3D;123&amp;sharedKey&#x3D;456,
                                 authentication_response: null,
                                 scheme_transaction_id: 019078743804756,
                                 processor: null,
                                 additional_details: null,
                                 account_updater_response: null,
                                 ach_response: null,
                                 currency_conversion_response: null,
                                 steps: null)
```


