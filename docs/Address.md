# OpenapiClient::Address

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**company** | **String** | Company name associated with the address. | [optional] 
**address1** | **String** | First line of the street address. | [optional] 
**address2** | **String** | Second line of the street address. | [optional] 
**city** | **String** | City or locality. | [optional] 
**region** | **String** | State or province. | [optional] 
**postal_code** | **String** | ZIP code or postal code. | [optional] 
**country** | **String** | ISO-3166-1  ALPHA-2, ALPHA-3, numeric or full country name. In the case of PaySecure endpoints, pass the country code in an ISO format. NOTE: Country required for following listed SEPA transactions:  - SEPA DD transaction done with Local Payments (aka PPRO).  - SEPA DD transaction done via POSEIDON and the IBAN belongs to the &#39;SE&#39; country group. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Address.new(company: Test Company,
                                 address1: 123 Main St.,
                                 address2: Suite 123,
                                 city: Sandy Springs,
                                 region: Georgia,
                                 postal_code: 30303,
                                 country: USA)
```


