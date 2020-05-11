# OpenapiClient::SecondaryTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the secondary transaction request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**comments** | **String** | Comment for the secondary transaction. | [optional] 
**order** | [**Order**](Order.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SecondaryTransaction.new(request_type: PostAuthTransaction,
                                 store_id: 12345500000,
                                 comments: This is a comment,
                                 order: null)
```


