# OpenapiClient::UsePaymentToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | Client-supplied payment token value. | 
**function** | [**CardFunction**](CardFunction.md) |  | [optional] 
**security_code** | **String** | Card verification value/number. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UsePaymentToken.new(value: 1235325235236,
                                 function: null,
                                 security_code: 977)
```


