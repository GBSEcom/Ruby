# OpenapiClient::PaymentSchedulesApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel_payment_schedule**](PaymentSchedulesApi.md#cancel_payment_schedule) | **DELETE** /payment-schedules/{order-id} | Cancel a gateway payment schedule.
[**create_payment_schedule**](PaymentSchedulesApi.md#create_payment_schedule) | **POST** /payment-schedules | Create gateway payment schedule.
[**inquiry_payment_schedule**](PaymentSchedulesApi.md#inquiry_payment_schedule) | **GET** /payment-schedules/{order-id} | View a gateway payment schedule.
[**update_payment_schedule**](PaymentSchedulesApi.md#update_payment_schedule) | **PATCH** /payment-schedules/{order-id} | Update a gateway payment schedule.



## cancel_payment_schedule

> PaymentSchedulesResponse cancel_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, opts)

Cancel a gateway payment schedule.

Use this to cancel an existing gateway payment schedule.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentSchedulesApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app.
}

begin
  #Cancel a gateway payment schedule.
  result = api_instance.cancel_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentSchedulesApi->cancel_payment_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 

### Return type

[**PaymentSchedulesResponse**](PaymentSchedulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_payment_schedule

> PaymentSchedulesResponse create_payment_schedule(content_type, client_request_id, api_key, timestamp, payment_schedules_request, opts)

Create gateway payment schedule.

Use this to create a gateway payment schedule.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentSchedulesApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
payment_schedules_request = OpenapiClient::PaymentSchedulesRequest.new # PaymentSchedulesRequest | Accepted request types: PaymentMethodPaymentSchedulesRequest and ReferencedOrderPaymentSchedulesRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Create gateway payment schedule.
  result = api_instance.create_payment_schedule(content_type, client_request_id, api_key, timestamp, payment_schedules_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentSchedulesApi->create_payment_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **payment_schedules_request** | [**PaymentSchedulesRequest**](PaymentSchedulesRequest.md)| Accepted request types: PaymentMethodPaymentSchedulesRequest and ReferencedOrderPaymentSchedulesRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**PaymentSchedulesResponse**](PaymentSchedulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## inquiry_payment_schedule

> RecurringPaymentDetailsResponse inquiry_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, opts)

View a gateway payment schedule.

Use this to view an existing gateway payment schedule.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentSchedulesApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example', # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  store_id: 'store_id_example' # String | An optional outlet ID for clients that support multiple stores in the same developer app.
}

begin
  #View a gateway payment schedule.
  result = api_instance.inquiry_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentSchedulesApi->inquiry_payment_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 
 **store_id** | **String**| An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 

### Return type

[**RecurringPaymentDetailsResponse**](RecurringPaymentDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_schedule

> PaymentSchedulesResponse update_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, payment_schedules_request, opts)

Update a gateway payment schedule.

Use this to update a gateway payment schedule.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::PaymentSchedulesApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
order_id = 'order_id_example' # String | Gateway order identifier as returned in the parameter orderId.
payment_schedules_request = OpenapiClient::PaymentSchedulesRequest.new # PaymentSchedulesRequest | Accepted request types: PaymentMethodPaymentSchedulesRequest and ReferencedOrderPaymentSchedulesRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Update a gateway payment schedule.
  result = api_instance.update_payment_schedule(content_type, client_request_id, api_key, timestamp, order_id, payment_schedules_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling PaymentSchedulesApi->update_payment_schedule: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **order_id** | **String**| Gateway order identifier as returned in the parameter orderId. | 
 **payment_schedules_request** | [**PaymentSchedulesRequest**](PaymentSchedulesRequest.md)| Accepted request types: PaymentMethodPaymentSchedulesRequest and ReferencedOrderPaymentSchedulesRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**PaymentSchedulesResponse**](PaymentSchedulesResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

