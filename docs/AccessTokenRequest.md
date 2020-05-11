# OpenapiClient::AccessTokenRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**domain** | **String** | Domain name. | 
**token** | **String** | The token value. | 
**public_key_required** | **Boolean** | Indicates whether public key is requested or not. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccessTokenRequest.new(domain: somedomain.com,
                                 token: gfgF92JHDJFjxcJHCQ23IbI12D,
                                 public_key_required: true)
```


