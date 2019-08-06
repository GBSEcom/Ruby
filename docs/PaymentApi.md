# OpenapiClient::PaymentApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finalize_secure_transaction**](PaymentApi.md#finalize_secure_transaction) | **PATCH** /payments/{transaction-id} | Update a 3DSecure or UnionPay payment and continue processing.
[**submit_primary_transaction**](PaymentApi.md#submit_primary_transaction) | **POST** /payments | Generate a primary transaction.
[**submit_secondary_transaction**](PaymentApi.md#submit_secondary_transaction) | **POST** /payments/{transaction-id} | Perform a secondary transaction.
[**transaction_inquiry**](PaymentApi.md#transaction_inquiry) | **GET** /payments/{transaction-id} | Retrieve the state of a transaction.



## finalize_secure_transaction

> TransactionResponse finalize_secure_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_verification_request, opts)

Update a 3DSecure or UnionPay payment and continue processing.

Use this to handle a 3DSecure redirect response or UnionPay authentication, updating the transaction and continuing processing.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId.
authentication_verification_request = OpenapiClient::AuthenticationVerificationRequest.new # AuthenticationVerificationRequest | Accepted request types: Secure3dAuthenticationVerificationRequest and UnionPayAuthenticationVerificationRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Update a 3DSecure or UnionPay payment and continue processing.
  result = api_instance.finalize_secure_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_verification_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->finalize_secure_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId. | 
 **authentication_verification_request** | [**AuthenticationVerificationRequest**](AuthenticationVerificationRequest.md)| Accepted request types: Secure3dAuthenticationVerificationRequest and UnionPayAuthenticationVerificationRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_primary_transaction

> TransactionResponse submit_primary_transaction(content_type, client_request_id, api_key, timestamp, primary_transaction, opts)

Generate a primary transaction.

Use this to originate a financial transaction like a sale, preauthorization, or credit. For payment methods AliPay, PayPal and GooglePay the response will be simulated in Try It Out to reflect a successful response.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
primary_transaction = OpenapiClient::PrimaryTransaction.new # PrimaryTransaction | Accepted request types: AliPaySaleTransaction, ChinaPnRSaleTransaction, PaymentCardCreditTransaction, PaymentCardForcedTicketTransaction, PaymentCardSaleTransaction, PaymentCardPreAuthTransaction, PaymentCardPayerAuthTransaction, PaymentCardDisbursementTransaction, PaymentTokenCreditTransaction, PaymentTokenPreAuthTransaction, PaymentTokenSaleTransaction, PaymentTokenDisbursementTransaction, PaypalCreditTransaction, SepaSaleTransaction, WalletSaleTransaction, and WalletPreAuthTransaction.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Generate a primary transaction.
  result = api_instance.submit_primary_transaction(content_type, client_request_id, api_key, timestamp, primary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->submit_primary_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **primary_transaction** | [**PrimaryTransaction**](PrimaryTransaction.md)| Accepted request types: AliPaySaleTransaction, ChinaPnRSaleTransaction, PaymentCardCreditTransaction, PaymentCardForcedTicketTransaction, PaymentCardSaleTransaction, PaymentCardPreAuthTransaction, PaymentCardPayerAuthTransaction, PaymentCardDisbursementTransaction, PaymentTokenCreditTransaction, PaymentTokenPreAuthTransaction, PaymentTokenSaleTransaction, PaymentTokenDisbursementTransaction, PaypalCreditTransaction, SepaSaleTransaction, WalletSaleTransaction, and WalletPreAuthTransaction. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## submit_secondary_transaction

> TransactionResponse submit_secondary_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)

Perform a secondary transaction.

Use this to perform a void, postAuth or return secondary transaction. Partial postAuths and returns are allowed.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId.
secondary_transaction = OpenapiClient::SecondaryTransaction.new # SecondaryTransaction | Accepted request types: PostAuthTransaction, VoidTransaction, and ReturnTransaction.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app.
}

begin
  #Perform a secondary transaction.
  result = api_instance.submit_secondary_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->submit_secondary_transaction: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId. | 
 **secondary_transaction** | [**SecondaryTransaction**](SecondaryTransaction.md)| Accepted request types: PostAuthTransaction, VoidTransaction, and ReturnTransaction. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## transaction_inquiry

> TransactionResponse transaction_inquiry(content_type, client_request_id, api_key, timestamp, transaction_id, opts)

Retrieve the state of a transaction.

Use this query to get the current state of an existing transaction.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
transaction_id = 'transaction_id_example' # String | Gateway transaction identifier as returned in the parameter ipgTransactionId.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app.
}

begin
  #Retrieve the state of a transaction.
  result = api_instance.transaction_inquiry(content_type, client_request_id, api_key, timestamp, transaction_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentApi->transaction_inquiry: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

