# OpenapiClient::BillingAddress

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** | First name. | [optional] 
**last_name** | **String** | Last name. | [optional] 
**middle_name** | **String** | Middle name. | [optional] 
**street** | **String** | First line of street address. | 
**street2** | **String** | Second line of street address. | [optional] 
**state_province** | **String** | State or province. | [optional] 
**city** | **String** | City. | [optional] 
**country** | **String** | Country. | [optional] 
**phone** | [**BillingAddressPhone**](BillingAddressPhone.md) |  | [optional] 
**zip_postal_code** | **String** | Postal code. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BillingAddress.new(first_name: John,
                                 last_name: Smith,
                                 middle_name: Joseph,
                                 street: Apartment 123,
                                 street2: 123 Main Street,
                                 state_province: NY,
                                 city: New York,
                                 country: US,
                                 phone: null,
                                 zip_postal_code: 11375)
```


