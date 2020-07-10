# OpenapiClient::TeleCheckICAPaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_ip_address** | **String** | Customer IP address from the terminal where the order was placed (as captured by merchant). | 
**imei_code** | **String** | International mobile equipment identity code. | [optional] 
**recurring_type** | [**AchRecurringType**](AchRecurringType.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TeleCheckICAPaymentMethod.new(customer_ip_address: 11.32.232.44,
                                 imei_code: 99-000086-247185-4,
                                 recurring_type: null)
```


