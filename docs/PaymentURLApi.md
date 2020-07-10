# OpenapiClient::PaymentURLApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_payment_url**](PaymentURLApi.md#create_payment_url) | **POST** /payment-url | Create a payment URL.
[**delete_payment_url**](PaymentURLApi.md#delete_payment_url) | **DELETE** /payment-url | Delete a payment URL.
[**payment_url_detail**](PaymentURLApi.md#payment_url_detail) | **GET** /payment-url | Retrieve the state of payment URL.



## create_payment_url

> PaymentUrlResponse create_payment_url(content_type, client_request_id, api_key, timestamp, payment_url_request, opts)

Create a payment URL.

Use this to generate an embedding payment link.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentURLApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
payment_url_request = OpenapiClient::PaymentUrlRequest.new # PaymentUrlRequest | Accepted request type: PaymentUrlRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
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
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **payment_url_request** | [**PaymentUrlRequest**](PaymentUrlRequest.md)| Accepted request type: PaymentUrlRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**PaymentUrlResponse**](PaymentUrlResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_url

> PaymentUrlResponse delete_payment_url(content_type, client_request_id, api_key, timestamp, opts)

Delete a payment URL.

Use this to delete an embedding payment link.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentURLApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example', # String | An optional outlet ID for clients that support multiple stores in the same developer app.
  transaction_id: 'transaction_id_example', # String | Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
  order_id: 'order_id_example', # String | Gateway order identifier as returned in the parameter orderId.
  payment_url_id: 'payment_url_id_example', # String | The ID code from the payment URL.
  transaction_time: 'transaction_time_example' # String | The transaction time in seconds since epoch.
}

begin
  #Delete a payment URL.
  result = api_instance.delete_payment_url(content_type, client_request_id, api_key, timestamp, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentURLApi->delete_payment_url: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
 **transaction_id** | **String**| Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId. | [optional] 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId. | [optional] 
 **payment_url_id** | **String**| The ID code from the payment URL. | [optional] 
 **transaction_time** | **String**| The transaction time in seconds since epoch. | [optional] 

### Return type

[**PaymentUrlResponse**](PaymentUrlResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## payment_url_detail

> PaymentUrlDetailResponse payment_url_detail(content_type, client_request_id, api_key, timestamp, from_date, to_date, opts)

Retrieve the state of payment URL.

Use this query to get the current state of an existing paymentURL.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentURLApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
from_date = 'from_date_example' # String | The start date for payment URL in seconds since epoch.
to_date = 'to_date_example' # String | The end date for payment URL search query in seconds since epoch.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example', # String | An optional outlet ID for clients that support multiple stores in the same developer app.
  order_id: 'order_id_example', # String | Gateway order identifier as returned in the parameter orderId.
  merchant_transaction_id: 'merchant_transaction_id_example', # String | Gateway merchant identifier as returned in the parameter merchantTransactionId.
  status: 'status_example' # String | The status of payment URL.
}

begin
  #Retrieve the state of payment URL.
  result = api_instance.payment_url_detail(content_type, client_request_id, api_key, timestamp, from_date, to_date, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentURLApi->payment_url_detail: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **from_date** | **String**| The start date for payment URL in seconds since epoch. | 
 **to_date** | **String**| The end date for payment URL search query in seconds since epoch. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId. | [optional] 
 **merchant_transaction_id** | **String**| Gateway merchant identifier as returned in the parameter merchantTransactionId. | [optional] 
 **status** | **String**| The status of payment URL. | [optional] 

### Return type

[**PaymentUrlDetailResponse**](PaymentUrlDetailResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

