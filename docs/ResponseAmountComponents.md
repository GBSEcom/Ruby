# OpenapiClient::ResponseAmountComponents

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subtotal** | **Float** | Subtotal amount. | [optional] 
**vat_amount** | **Float** | Value-added tax amount. | [optional] 
**local_tax** | **Float** | Local tax amount. | [optional] 
**shipping** | **Float** | Shipping amount. | [optional] 
**cashback** | **Float** | Cashback amount. | [optional] 
**tip** | **Float** | Tip amount. | [optional] 
**surcharge** | **Float** | Surcharge amount. | [optional] 
**convenience_fee** | **Float** | Amount added for proccessing or handling fees. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ResponseAmountComponents.new(subtotal: 8.0,
                                 vat_amount: 0,
                                 local_tax: 1.0,
                                 shipping: 1.24,
                                 cashback: 2.0,
                                 tip: 6.0,
                                 surcharge: 2.5,
                                 convenience_fee: 2.0)
```


