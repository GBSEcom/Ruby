# OpenapiClient::MerchantLocation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**location_id** | **String** | The unique ID of this location. | [optional] 
**merchant_address** | [**MerchantLocationMerchantAddress**](MerchantLocationMerchantAddress.md) |  | [optional] 
**hierarchy** | **String** | Free-text field to describe a hierarchy the merchant would like to provide. | [optional] 
**timezone_offset** | **String** | The timezone offset from UTC to the merchants timezone configuration, specified in the format +hh:mm. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the location that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::MerchantLocation.new(location_id: 3,
                                 merchant_address: null,
                                 hierarchy: FDC,
                                 timezone_offset: +02:00,
                                 user_defined: {&quot;validAddress&quot;:false})
```


