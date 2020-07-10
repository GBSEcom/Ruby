# OpenapiClient::UpdateFraudSettingsResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stores** | [**Array&lt;StoreFraudSettingsResult&gt;**](StoreFraudSettingsResult.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::UpdateFraudSettingsResponseAllOf.new(stores: [{&quot;id&quot;:&quot;12345500000&quot;,&quot;blockedCardIdentifier&quot;:{&quot;tokenIdentifier&quot;:&quot;570e66b0d4fd91b27155a36911220e0e98d0db7e22fcf0b86544fdf175c707d0&quot;},&quot;status&quot;:&quot;SUCCESS. Fraud settings was updated successfully.&quot;},{&quot;id&quot;:&quot;1234550000044&quot;,&quot;blockedCardIdentifier&quot;:{&quot;tokenIdentifier&quot;:&quot;8535993dsrfs9898fssdfgddse9898fv9dfu8f98d0db7e22fcf0b86544fdf178&quot;},&quot;status&quot;:&quot;SUCCESS. Fraud settings was updated successfully.&quot;}])
```


