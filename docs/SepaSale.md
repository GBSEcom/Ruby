# OpenapiClient::SepaSale

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **String** | Bank account in IBAN format. | 
**name** | **String** | The name of the payer. | 
**email** | **String** | The email address of the payer. | [optional] 
**mandate** | [**SepaMandate**](SepaMandate.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SepaSale.new(iban: DE34500100600032121604,
                                 name: John Doe,
                                 email: john.doe@test.com,
                                 mandate: null)
```


