# OpenapiClient::AuthenticationRedirectParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payer_authentication_request** | **String** | Message sent from merchant server to authenticate the cardholder. | [optional] 
**term_url** | **String** | Terminal URL for processing request. | [optional] 
**merchant_data** | **String** | Merchant data. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AuthenticationRedirectParams.new(payer_authentication_request: c7fb83b8ag...73t4a827t4af8738a,
                                 term_url: https://api.example.com/redirectToAcs,
                                 merchant_data: MD123...sdfk)
```


