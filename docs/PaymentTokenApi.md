# OpenapiClient::PaymentTokenApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_token**](PaymentTokenApi.md#create_payment_token) | **POST** /v1/payment-tokens | Create a payment token from a payment card.
[**delete_payment_token**](PaymentTokenApi.md#delete_payment_token) | **DELETE** /v1/payment-tokens/{token-id} | Delete a payment token.


# **create_payment_token**
> PaymentTokenizationResponse create_payment_token(content_type, client_request_id, api_key, timestamp, payment_tokenization_request, opts)

Create a payment token from a payment card.

Use this to create a payment token from a payment card.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentTokenApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
payment_tokenization_request = OpenapiClient::PaymentTokenizationRequest.new # PaymentTokenizationRequest | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  authorization: 'authorization_example', # String | The access token previously generated with the access-tokens call. Use the format 'Bearer {access-token}'.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Create a payment token from a payment card.
  result = api_instance.create_payment_token(content_type, client_request_id, api_key, timestamp, payment_tokenization_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentTokenApi->create_payment_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **payment_tokenization_request** | [**PaymentTokenizationRequest**](PaymentTokenizationRequest.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **authorization** | **String**| The access token previously generated with the access-tokens call. Use the format &#39;Bearer {access-token}&#39;. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**PaymentTokenizationResponse**](PaymentTokenizationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_payment_token**
> PaymentTokenizationResponse delete_payment_token(content_type, client_request_id, api_key, timestamp, token_id, opts)

Delete a payment token.

Use this to delete a payment token.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentTokenApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
token_id = 'token_id_example' # String | Identifies a payment token
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  authorization: 'authorization_example', # String | The access token previously generated with the access-tokens call. Use the format 'Bearer {access-token}'.
  region: 'region_example', # String | The region where client wants to process the transaction
  store_id: 'store_id_example' # String | 
}

begin
  #Delete a payment token.
  result = api_instance.delete_payment_token(content_type, client_request_id, api_key, timestamp, token_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentTokenApi->delete_payment_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **token_id** | **String**| Identifies a payment token | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **authorization** | **String**| The access token previously generated with the access-tokens call. Use the format &#39;Bearer {access-token}&#39;. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 
 **store_id** | **String**|  | [optional] 

### Return type

[**PaymentTokenizationResponse**](PaymentTokenizationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



