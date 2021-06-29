# OpenapiClient::SepaCredit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**iban** | **String** | Bank account in IBAN format. | 
**name** | **String** | The name of the Account Holder. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SepaCredit.new(iban: DE34500100600032121604,
                                 name: John Doe)
```


