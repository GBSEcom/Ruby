# OpenapiClient::SenderInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Sender name. | 
**street_address** | **String** | Sender street address. | 
**city** | **String** | Sender city. | 
**state_code** | **String** | Sender state. | 
**country_code** | **String** | Sender country code. | 
**postal_code** | **String** | Sender postal code. | 
**phone_number** | **String** | Sender phone number. | 
**birth_date** | **String** | Sender date of birth (YYYYMMDD). | [optional] 
**reference_number** | **String** | Sender reference number. | 
**account_number** | **String** | Sender account number. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SenderInfo.new(name: Franklin D. Roosevelt,
                                 street_address: 5565 Glenridge Connector,
                                 city: Atlanta,
                                 state_code: GA,
                                 country_code: US,
                                 postal_code: 30342,
                                 phone_number: 4044040740,
                                 birth_date: 19560121,
                                 reference_number: 123456,
                                 account_number: 135246)
```


