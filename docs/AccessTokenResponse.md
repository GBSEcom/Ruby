# OpenapiClient::AccessTokenResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**access_token** | **String** | Access token for authentication. | [optional] 
**client_request_id** | **String** | Echoes back the value from the request header for tracking. | [optional] 
**request_status** | **String** | The result of the requested operation. If this is anything other than &#39;SUCCESS&#39;, please refer to the 400s HTTP error codes. See ErrorResponse object for details. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccessTokenResponse.new(access_token: Rft3dqrs56Blirls56a,
                                 client_request_id: 30dd879c-ee2f-11db-8314-0800200c9a66,
                                 request_status: null)
```


