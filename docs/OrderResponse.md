# OpenapiClient::OrderResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**order_id** | **String** | Note - Client Order ID if supplied by client. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM). | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**transactions** | [**Array&lt;TransactionResponse&gt;**](TransactionResponse.md) | Required for some payment methods (for example, Klarna). | [optional] 
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::OrderResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 order_id: 123456,
                                 billing: null,
                                 shipping: null,
                                 transactions: [{&quot;transactionState&quot;:&quot;AUTHORIZED&quot;,&quot;ipgTransactionId&quot;:&quot;838916029301&quot;,&quot;transactionType&quot;:&quot;SALE&quot;,&quot;transactionAmount&quot;:{&quot;total&quot;:10.24,&quot;currency&quot;:&quot;USD&quot;},&quot;storeId&quot;:&quot;1109959991&quot;}],
                                 additional_details: null)
```


