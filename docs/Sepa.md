# OpenapiClient::Sepa

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **String** | Bank account in IBAN format. | 
**name** | **String** | The name of the payer. | 
**country** | **String** | Country of residence of the payer using the ISO 3166 standard. | 
**email** | **String** | The email address of the payer. | [optional] 
**mandate** | [**SepaMandate**](SepaMandate.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Sepa.new(iban: DE34500100600032121604,
                                 name: John Doe,
                                 country: DEU,
                                 email: john.doe@test.com,
                                 mandate: null)
```


