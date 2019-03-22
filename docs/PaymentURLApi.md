# OpenapiClient::PaymentURLApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_url**](PaymentURLApi.md#create_payment_url) | **POST** /v1/payment-url | Create a payment URL.


# **create_payment_url**
> PaymentUrlResponse create_payment_url(content_type, client_request_id, api_key, timestamp, payment_url_request, opts)

Create a payment URL.

Use this to generate an embedding payment link.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentURLApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
payment_url_request = OpenapiClient::PaymentUrlRequest.new # PaymentUrlRequest | 
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Create a payment URL.
  result = api_instance.create_payment_url(content_type, client_request_id, api_key, timestamp, payment_url_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentURLApi->create_payment_url: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **payment_url_request** | [**PaymentUrlRequest**](PaymentUrlRequest.md)|  | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**PaymentUrlResponse**](PaymentUrlResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



