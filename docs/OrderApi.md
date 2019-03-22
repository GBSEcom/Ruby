# OpenapiClient::OrderApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**order_inquiry**](OrderApi.md#order_inquiry) | **GET** /v1/orders/{order-id} | Retrieve the state of an order
[**order_post_auth**](OrderApi.md#order_post_auth) | **POST** /v1/orders/{order-id}/postauth | Capture/complete an already existing order.
[**order_return_transaction**](OrderApi.md#order_return_transaction) | **POST** /v1/orders/{order-id}/return | Return/refund an order.


# **order_inquiry**
> OrderResponse order_inquiry(content_type, client_request_id, api_key, timestamp, order_id, opts)

Retrieve the state of an order

Use this query to get the current state of an existing order.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrderApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Retrieve the state of an order
  result = api_instance.order_inquiry(content_type, client_request_id, api_key, timestamp, order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrderApi->order_inquiry: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**OrderResponse**](OrderResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **order_post_auth**
> TransactionResponse order_post_auth(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts)

Capture/complete an already existing order.

Use this to capture/complete an order. Postauths and partial postauths are allowed.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrderApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId
secondary_transaction = OpenapiClient::SecondaryTransaction.new # SecondaryTransaction | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Capture/complete an already existing order.
  result = api_instance.order_post_auth(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrderApi->order_post_auth: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId | 
 **secondary_transaction** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_return_transaction**
> TransactionResponse order_return_transaction(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts)

Return/refund an order.

Use this for Returns of an existing order. Partial Returns are allowed.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrderApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId
secondary_transaction = OpenapiClient::SecondaryTransaction.new # SecondaryTransaction | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app
}

begin
  #Return/refund an order.
  result = api_instance.order_return_transaction(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrderApi->order_return_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId | 
 **secondary_transaction** | [**SecondaryTransaction**](SecondaryTransaction.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



