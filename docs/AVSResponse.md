# OpenapiClient::AVSResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street_match** | **String** | Response if street matches that on file. | [optional] 
**postal_code_match** | **String** | Response if postal code matches that on file. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AVSResponse.new(street_match: Y,
                                 postal_code_match: N)
```


