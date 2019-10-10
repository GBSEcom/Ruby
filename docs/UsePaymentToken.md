# OpenapiClient::UsePaymentToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | Client-supplied payment token value. | 
**token_origin_store_id** | **String** | The ID of a same store (or) sibling store in a hierarchy for which the token was originally created. | [optional] 
**function** | [**CardFunction**](CardFunction.md) |  | [optional] 
**security_code** | **String** | Card verification value/number. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UsePaymentToken.new(value: 1235325235236,
                                 token_origin_store_id: 12345500001,
                                 function: null,
                                 security_code: 977)
```


