# OpenapiClient::VerificationApi

All URIs are relative to *https://cert.api.firstdata.com/gateway/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**verify_account**](VerificationApi.md#verify_account) | **POST** /account-verification | Verify a payment card or payment token.
[**verify_card**](VerificationApi.md#verify_card) | **POST** /card-verification | Verify a payment card.



## verify_account

> TransactionResponse verify_account(content_type, client_request_id, api_key, timestamp, account_verification_request, opts)

Verify a payment card or payment token.

Use this to perform an account verification for a payment card or payment token.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::VerificationApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
account_verification_request = OpenapiClient::AccountVerificationRequest.new # AccountVerificationRequest | Accepted request type: PaymentCardVerificationRequest and PaymentTokenVerificationRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Verify a payment card or payment token.
  result = api_instance.verify_account(content_type, client_request_id, api_key, timestamp, account_verification_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling VerificationApi->verify_account: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **account_verification_request** | [**AccountVerificationRequest**](AccountVerificationRequest.md)| Accepted request type: PaymentCardVerificationRequest and PaymentTokenVerificationRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## verify_card

> TransactionResponse verify_card(content_type, client_request_id, api_key, timestamp, card_verification_request, opts)

Verify a payment card.

Use this to perform card verification for a payment card. Use the account-verification endpoint instead for this request.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::VerificationApi.new
content_type = 'application/json' # String | Content type.
client_request_id = 'client_request_id_example' # String | A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
api_key = 'api_key_example' # String | Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
timestamp = 56 # Integer | Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
card_verification_request = OpenapiClient::CardVerificationRequest.new # CardVerificationRequest | Accepted request type: CardVerificationRequest.
opts = {
  message_signature: 'message_signature_example', # String | Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  region: 'region_example' # String | Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
}

begin
  #Verify a payment card.
  result = api_instance.verify_card(content_type, client_request_id, api_key, timestamp, card_verification_request, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling VerificationApi->verify_card: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **content_type** | **String**| Content type. | [default to &#39;application/json&#39;]
 **client_request_id** | **String**| A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format. | 
 **api_key** | **String**| Key given to merchant after boarding associating their requests with the appropriate app in Apigee. | 
 **timestamp** | **Integer**| Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins). | 
 **card_verification_request** | [**CardVerificationRequest**](CardVerificationRequest.md)| Accepted request type: CardVerificationRequest. | 
 **message_signature** | **String**| Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal. | [optional] 
 **region** | **String**| Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing. | [optional] 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

