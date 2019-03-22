# OpenapiClient::CardInfoLookupApi

All URIs are relative to *https://cert.api.firstdata.com/gateway*

Method | HTTP request | Description
------------- | ------------- | -------------
[**card_info_lookup**](CardInfoLookupApi.md#card_info_lookup) | **POST** /v1/card-information | Card information lookUp


# **card_info_lookup**
> CardInfoLookupResponse card_info_lookup(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts)

Card information lookUp

Use this to look up card related information such as issuer country, card function and card brand.

### Example
```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::CardInfoLookupApi.new
content_type = 'application/json' # String | content type
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | 
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
card_info_lookup_request = OpenapiClient::CardInfoLookupRequest.new # CardInfoLookupRequest | Card information lookup payload.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | The region where client wants to process the transaction
}

begin
  #Card information lookUp
  result = api_instance.card_info_lookup(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardInfoLookupApi->card_info_lookup: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| content type | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**|  | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **card_info_lookup_request** | [**CardInfoLookupRequest**](CardInfoLookupRequest.md)| Card information lookup payload. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| The region where client wants to process the transaction | [optional] 

### Return type

[**CardInfoLookupResponse**](CardInfoLookupResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



