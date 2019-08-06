# OpenapiClient::DynamicPricingAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**foreign_currency** | **String** | The currency code to convert for dynamic pricing in ISO 4217 currency code format. | 
**foreign_amount** | **String** | Foreign amount. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DynamicPricingAllOf.new(foreign_currency: 978,
                                 foreign_amount: 22.52)
```


