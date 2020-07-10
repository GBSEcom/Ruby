# OpenapiClient::PaymentTokenUpdateResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_status** | **String** | The status of the request. | [optional] 
**request_time** | **Integer** | Time of the request. | [optional] 
**errors** | [**Array&lt;Error&gt;**](Error.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenUpdateResponseAllOf.new(request_status: APPROVED,
                                 request_time: 1554308829345,
                                 errors: null)
```


