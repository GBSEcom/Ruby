# OpenapiClient::Billing

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Billing name. | [optional] 
**customer_id** | **String** | Customer ID for billing purpose. | [optional] 
**birth_date** | **Date** | Customer birth date. | [optional] 
**contact** | [**Contact**](Contact.md) |  | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Billing.new(name: John Doe,
                                 customer_id: 1234567890,
                                 birth_date: null,
                                 contact: null,
                                 address: null)
```


