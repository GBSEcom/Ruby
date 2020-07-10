# OpenapiClient::PaymentSchedulesResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **String** | Result of requested operation. If it&#39;s anything other than &#39;SUCCESS&#39;, please refer to 400s HTTP error codes or decline. See Error object for details. | [optional] 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**transaction_response** | [**TransactionResponse**](TransactionResponse.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentSchedulesResponseAllOf.new(request_status: SUCCESS,
                                 order_id: 123456,
                                 transaction_response: null)
```


