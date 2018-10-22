# SwaggerClient::OrderApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**perform_payment_post_authorisation**](OrderApi.md#perform_payment_post_authorisation) | **POST** /v1/orders/{order-id}/postauth | Use this to capture/complete a transaction. Partial postauths are allowed.
[**return_transaction**](OrderApi.md#return_transaction) | **POST** /v1/orders/{order-id}/return | Use this to return/refund on the order. Partial returns are allowed.


# **perform_payment_post_authorisation**
> TransactionResponse perform_payment_post_authorisation(content_type, client_request_id, api_key, timestamp, message_signature, order_id, payload, opts)

Use this to capture/complete a transaction. Partial postauths are allowed.

This can be used for postauth and partial postauths.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrderApi.new

content_type = "application/json" # String | content type

client_request_id = "client_request_id_example" # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.

api_key = "api_key_example" # String | 

timestamp = 789 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).

message_signature = "message_signature_example" # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.

order_id = "order_id_example" # String | Gateway order identifier as returned in the parameter orderId

payload = SwaggerClient::SecondaryTransaction.new # SecondaryTransaction | 

opts = { 
  store_id: "store_id_example" # String | an optional outlet id for clients that support multiple store in the same developer app
}

begin
  #Use this to capture/complete a transaction. Partial postauths are allowed.
  result = api_instance.perform_payment_post_authorisation(content_type, client_request_id, api_key, timestamp, message_signature, order_id, payload, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->perform_payment_post_authorisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to application/json]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId | 
 **payload** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **store_id** | **String**| an optional outlet id for clients that support multiple store in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **return_transaction**
> TransactionResponse return_transaction(content_type, client_request_id, api_key, timestamp, message_signature, order_id, payload, opts)

Use this to return/refund on the order. Partial returns are allowed.

This can be used for Returns and Partial Returns.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::OrderApi.new

content_type = "application/json" # String | content type

client_request_id = "client_request_id_example" # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.

api_key = "api_key_example" # String | 

timestamp = 789 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).

message_signature = "message_signature_example" # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.

order_id = "order_id_example" # String | Gateway order identifier as returned in the parameter orderId

payload = SwaggerClient::SecondaryTransaction.new # SecondaryTransaction | 

opts = { 
  store_id: "store_id_example" # String | an optional outlet id for clients that support multiple store in the same developer app
}

begin
  #Use this to return/refund on the order. Partial returns are allowed.
  result = api_instance.return_transaction(content_type, client_request_id, api_key, timestamp, message_signature, order_id, payload, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling OrderApi->return_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to application/json]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId | 
 **payload** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **store_id** | **String**| an optional outlet id for clients that support multiple store in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



