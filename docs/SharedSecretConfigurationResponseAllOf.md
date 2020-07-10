# OpenapiClient::SharedSecretConfigurationResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**shared_secret** | **String** | Shared secret/password for Connect. | [optional] 
**response_message** | **String** | The message/status received after updating shared secret service config. | [optional] 
**response_timestamp** | **Integer** | Response timestamp. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SharedSecretConfigurationResponseAllOf.new(store_id: 12345500000,
                                 shared_secret: 6768tr457r,
                                 response_message: SUCCESS,
                                 response_timestamp: 1561035070)
```


