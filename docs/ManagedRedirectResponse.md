# OpenapiClient::ManagedRedirectResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
**request_status** | **String** | The status of the request. | [optional] 
**order_id** | **String** | Note - Client Order ID if supplied by client which should not contain any special characters or spaces. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM). | [optional] 
**redirect_url** | **String** | URL for embedded payment link. | [optional] 
**transaction_id** | **String** | ID code from the transaction. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ManagedRedirectResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 request_status: SUCCESS,
                                 order_id: 123456,
                                 redirect_url: https://api.firstdata.com/connect/gateway/processing?storename&#x3D;123456789&amp;oid&#x3D;R-96cdbaa4-c22e-4598-a2f1-c2b5fed79ef1&amp;redirectRequestId&#x3D;d3eb74fe-cf63-47e1-b89f-52ba0cc7965c,
                                 transaction_id: 123978432)
```


