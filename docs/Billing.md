# OpenapiClient::Billing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Billing name. | [optional] 
**first_name** | **String** | Billing first name. Note - Only supported for AMEX. | [optional] 
**last_name** | **String** | Billing last name. Note - Only supported for AMEX. | [optional] 
**customer_id** | **String** | Customer ID for billing purpose. | [optional] 
**birth_date** | **Date** | Customer birth date. | [optional] 
**contact** | [**Contact**](Contact.md) |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Billing.new(name: John Doe,
                                 first_name: John,
                                 last_name: Doe,
                                 customer_id: 1234567890,
                                 birth_date: Wed Jan 30 18:00:00 CST 1980,
                                 contact: null,
                                 address: null)
```


