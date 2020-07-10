# OpenapiClient::TeleCheckAchPaymentMethodAchBillTo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_name** | **String** | Customer billing first name. | [optional] 
**last_name** | **String** | Customer billing last name. | 
**address_one** | **String** | Customer billing address, first line. | 
**address_two** | **String** | Customer billing address, second line. | [optional] 
**city** | **String** | Customer billing city. | 
**state** | **String** | Customer billing state. | 
**zip** | **String** | Customer billing zip code. | 
**phone** | **String** | Customer billing phone number. | 
**email** | **String** | Customer billing email. Required if performing an ICA transaction. | [optional] 
**country_code** | **String** | ISO country code. Required if performing an ICA transaction. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TeleCheckAchPaymentMethodAchBillTo.new(first_name: R2-D2,
                                 last_name: O&#39;Calloway,
                                 address_one: 1234 Line Ave S.,
                                 address_two: Ste 602,
                                 city: Atlanta,
                                 state: GA,
                                 zip: 30040-1309,
                                 phone: 9973322990,
                                 email: abcd.1234@fiserv.com,
                                 country_code: US)
```


