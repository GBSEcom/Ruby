# OpenapiClient::FraudSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**blocked_items** | [**BlockedItems**](BlockedItems.md) |  | [optional] 
**maximum_purchase_amount** | [**Array&lt;MaximumPurchaseAmount&gt;**](MaximumPurchaseAmount.md) |  | [optional] 
**lockout_time** | [**LockoutTime**](LockoutTime.md) |  | [optional] 
**country_profile** | [**CountryProfile**](CountryProfile.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudSettings.new(blocked_items: null,
                                 maximum_purchase_amount: [{&quot;currency&quot;:&quot;EUR&quot;,&quot;maxAmount&quot;:&quot;5555&quot;},{&quot;currency&quot;:&quot;USD&quot;,&quot;maxAmount&quot;:&quot;7755&quot;}],
                                 lockout_time: null,
                                 country_profile: null)
```


