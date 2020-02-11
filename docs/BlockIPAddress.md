# OpenapiClient::BlockIPAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ip_address** | **String** | Use this field to send IP address to be blocked. | [optional] 
**order_id** | **String** | Client order ID. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BlockIPAddress.new(ip_address: 104.56.45.132,
                                 order_id: 123456)
```


