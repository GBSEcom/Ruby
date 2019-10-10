# OpenapiClient::Verification3ds

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | 3DS response code. | 
**status** | **String** | Interpretation of the response code. | [optional] 
**scheme** | **String** | Identifier of the scheme. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Verification3ds.new(code: 4,
                                 status: approved,
                                 scheme: 6)
```


