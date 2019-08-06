# OpenapiClient::MerchantLocationMerchantAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street** | **String** | First line of street address. | 
**street2** | **String** | Second line of street address. | [optional] 
**state_province** | **String** | Merchant state or provinceu. | [optional] 
**city** | **String** | Merchant city. | [optional] 
**country** | **String** | Merchant country. | 
**zip_postal_code** | **String** | Merchant ZIP code. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MerchantLocationMerchantAddress.new(street: 5565 Glenridge Connector,
                                 street2: 1254J,
                                 state_province: GA,
                                 city: Atlanta,
                                 country: US,
                                 zip_postal_code: 30342)
```


