# OpenapiClient::StoreFraudSettingsResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An outlet identificator. | [optional] 
**blocked_card_identifier** | [**TokenIdentifier**](TokenIdentifier.md) |  | [optional] 
**status** | **String** | Status from fraud settings. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreFraudSettingsResult.new(id: 12345500000,
                                 blocked_card_identifier: null,
                                 status: SUCCESS)
```


