# OpenapiClient::ClearingElement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | Contains the brand of the card. | [optional] 
**value** | **Integer** | Holds the total clearing value computed for a specific brand. | [optional] 
**count** | **Integer** | Specifies the amount of clearing elements for a given brand. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ClearingElement.new(brand: VISA,
                                 value: 1234,
                                 count: 1234)
```


