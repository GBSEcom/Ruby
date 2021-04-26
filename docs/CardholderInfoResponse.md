# OpenapiClient::CardholderInfoResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**postal_code_or_zip_match** | **String** | Response if card holder postal code matches that on file. | [optional] 
**address_match** | **String** | Response if card holder address matches that on file. | [optional] 
**name_match** | **String** | Response if card holder name matches that on file. | [optional] 
**telephone_match** | **String** | Response if card holder telephone matches that on file. | [optional] 
**email_match** | **String** | Response if card holder email matches that on file. | [optional] 
**association_cardholder_info_response** | **String** | Raw cardholder info response from AMEX with no mapping. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardholderInfoResponse.new(postal_code_or_zip_match: Y,
                                 address_match: RETRY,
                                 name_match: SERVICE_NOT_ALLOWED,
                                 telephone_match: NOT_CHECKED,
                                 email_match: N,
                                 association_cardholder_info_response: YNUSR)
```


