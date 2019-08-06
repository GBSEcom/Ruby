# OpenapiClient::AuthenticationApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authentication_access_tokens_post**](AuthenticationApi.md#authentication_access_tokens_post) | **POST** /authentication/access-tokens | Generate an access token for user authentication.



## authentication_access_tokens_post

> AccessTokenResponse authentication_access_tokens_post(content_type, client_request_id, api_key, timestamp, opts)

Generate an access token for user authentication.

This is the access token generation call for authorizing subsequent financial transactions. A valid access token is required for web client requests.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::AuthenticationApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
opts = {
  message_signature: 'message_signature_example' # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
}

begin
  #Generate an access token for user authentication.
  result = api_instance.authentication_access_tokens_post(content_type, client_request_id, api_key, timestamp, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AuthenticationApi->authentication_access_tokens_post: #{e}"
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

### Return type

[**AccessTokenResponse**](AccessTokenResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

