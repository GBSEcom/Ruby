# OpenapiClient::Amount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **Float** | Sub component values must add up to total amount. | 
**currency** | **String** | ISO 4217 currency code. | 
**components** | [**AmountComponents**](AmountComponents.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Amount.new(total: 10.24,
                                 currency: USD,
                                 components: null)
```


