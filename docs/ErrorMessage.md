# OpenapiClient::ErrorMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Error code. | [optional] 
**description** | **String** | Error description. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ErrorMessage.new(code: invalid_transaction_type,
                                 description: The transaction type is not supported)
```


