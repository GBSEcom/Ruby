# OpenapiClient::FraudSettingsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_request_id** | **String** | Echoes back the value in the request header for tracking. | [optional] 
**api_trace_id** | **String** | Request identifier in API, can be used to request logs from the support team. | [optional] 
**response_type** | [**ResponseType**](ResponseType.md) |  | [optional] 
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

instance = OpenapiClient::FraudSettingsResponse.new(client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 api_trace_id: rrt-0bd552c12342d3448-b-ea-1142-12938318-7,
                                 response_type: null,
                                 store_id: 12345500000,
                                 blocked_card_numbers: [{&quot;cardNumber&quot;:&quot;542418...1745&quot;,&quot;tokenIdentifier&quot;:&quot;06a569340ae1b8a60d1a961971f255b2ba35c03c8ea5660be6c253c0eb76e2dd&quot;},{&quot;cardNumber&quot;:&quot;542418...1746&quot;,&quot;tokenIdentifier&quot;:&quot;06a569340ae1b8a60d1a961971f255b2ba3554258ea5660be6c253c0eb76e245&quot;}],
                                 blocked_names: [&quot;name123&quot;,&quot;adhoc&quot;],
                                 blocked_domain_names: [&quot;co.uk&quot;,&quot;uk.net&quot;],
                                 blocked_ip_or_class_c_addresses: [&quot;123.56.78.88&quot;,&quot;12.45.33.45&quot;],
                                 maximum_purchase_amount: [{&quot;currency&quot;:&quot;EUR&quot;,&quot;maxAmount&quot;:&quot;7789&quot;},{&quot;currency&quot;:&quot;USD&quot;,&quot;maxAmount&quot;:&quot;5569&quot;}],
                                 lockout_time: null,
                                 country_profile: All countries)
```


