# OpenapiClient::FraudSettingsResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | The outlet ID. | [optional] 
**blocked_card_numbers** | [**Array&lt;BlockedCardNumber&gt;**](BlockedCardNumber.md) | List of blocked card numbers. | [optional] 
**blocked_names** | **Array&lt;String&gt;** | List of blocked fraud names. | [optional] 
**blocked_domain_names** | **Array&lt;String&gt;** | List of blocked fraud domain names. | [optional] 
**blocked_ip_or_class_c_addresses** | **Array&lt;String&gt;** | List of blocked fraud IP address/Class C. | [optional] 
**maximum_purchase_amount** | [**Array&lt;MaximumPurchaseAmount&gt;**](MaximumPurchaseAmount.md) | Maximum purchase amount limit. | [optional] 
**lockout_time** | [**LockoutTime**](LockoutTime.md) |  | [optional] 
**country_profile** | **String** | Country profile. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudSettingsResponseAllOf.new(store_id: 12345500000,
                                 blocked_card_numbers: [{&quot;cardNumber&quot;:&quot;542418...1745&quot;,&quot;tokenIdentifier&quot;:&quot;06a569340ae1b8a60d1a961971f255b2ba35c03c8ea5660be6c253c0eb76e2dd&quot;},{&quot;cardNumber&quot;:&quot;542418...1746&quot;,&quot;tokenIdentifier&quot;:&quot;06a569340ae1b8a60d1a961971f255b2ba3554258ea5660be6c253c0eb76e245&quot;}],
                                 blocked_names: [&quot;name123&quot;,&quot;adhoc&quot;],
                                 blocked_domain_names: [&quot;co.uk&quot;,&quot;uk.net&quot;],
                                 blocked_ip_or_class_c_addresses: [&quot;123.56.78.88&quot;,&quot;12.45.33.45&quot;],
                                 maximum_purchase_amount: [{&quot;currency&quot;:&quot;EUR&quot;,&quot;maxAmount&quot;:&quot;7789&quot;},{&quot;currency&quot;:&quot;USD&quot;,&quot;maxAmount&quot;:&quot;5569&quot;}],
                                 lockout_time: null,
                                 country_profile: All countries)
```


