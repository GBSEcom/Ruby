# OpenapiClient::CustomerAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**street** | **String** | First line of street address. | 
**street2** | **String** | Second line of street address. | [optional] 
**state_province** | **String** | State or province. | [optional] 
**city** | **String** | City. | [optional] 
**country** | **String** | Country. | 
**zip_postal_code** | **String** | Postal code. | [optional] 
**phone** | [**Phone**](Phone.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CustomerAddress.new(street: Apartment 123,
                                 street2: 123 Main Street,
                                 state_province: NY,
                                 city: New York,
                                 country: US,
                                 zip_postal_code: 11375,
                                 phone: null)
```


