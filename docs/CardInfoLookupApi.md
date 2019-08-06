# OpenapiClient::CardInfoLookupApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**card_info_lookup**](CardInfoLookupApi.md#card_info_lookup) | **POST** /card-information | Card information lookup.



## card_info_lookup

> CardInfoLookupResponse card_info_lookup(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts)

Card information lookup.

Use this to look up card related information such as issuer country, card function and card brand.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::CardInfoLookupApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
card_info_lookup_request = OpenapiClient::CardInfoLookupRequest.new # CardInfoLookupRequest | Accepted request type: CardInfoLookupRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Card information lookup.
  result = api_instance.card_info_lookup(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling CardInfoLookupApi->card_info_lookup: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **card_info_lookup_request** | [**CardInfoLookupRequest**](CardInfoLookupRequest.md)| Accepted request type: CardInfoLookupRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**CardInfoLookupResponse**](CardInfoLookupResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

