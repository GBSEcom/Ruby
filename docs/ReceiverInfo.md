# OpenapiClient::ReceiverInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Receiver name. | 
**street_address** | **String** | Receiver street address. | 
**city** | **String** | Receiver city. | 
**state_code** | **String** | Receiver state. | 
**country_code** | **String** | Receiver country code. | 
**postal_code** | **String** | Receiver postal code. | 
**phone_number** | **String** | Receiver phone number. | 
**reference_number** | **String** | Receiver reference number. | 
**account_number** | **String** | Receiver account number. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ReceiverInfo.new(name: George Washington,
                                 street_address: 5565 Glenridge Connector,
                                 city: Atlanta,
                                 state_code: GA,
                                 country_code: US,
                                 postal_code: 30342,
                                 phone_number: 4044040740,
                                 reference_number: 123456,
                                 account_number: 135246)
```


