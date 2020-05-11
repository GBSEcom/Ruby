# OpenapiClient::StoreBrandingStyleConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An optional outlet id for clients that support multiple stores in the same developer app. | 
**combined** | [**CombinedMode**](CombinedMode.md) |  | [optional] 
**classic** | [**ClassicMode**](ClassicMode.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreBrandingStyleConfiguration.new(id: 12345500000,
                                 combined: null,
                                 classic: null)
```


