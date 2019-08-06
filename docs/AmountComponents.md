# OpenapiClient::AmountComponents

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subtotal** | **Float** | Subtotal amount. | [optional] 
**vat_amount** | **Float** | Value-added tax amount. | [optional] 
**local_tax** | **Float** | Local tax amount. | [optional] 
**shipping** | **Float** | Shipping amount. | [optional] 
**cashback** | **Float** | Cashback amount. | [optional] 
**tip** | **Float** | Tip amount. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AmountComponents.new(subtotal: 8.0,
                                 vat_amount: 0,
                                 local_tax: 1.3,
                                 shipping: 1.0,
                                 cashback: 2.0,
                                 tip: 6.0)
```


