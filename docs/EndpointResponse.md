# OpenapiClient::EndpointResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoint_id** | **String** | Specifies the identifier of an endpoint. | [optional] 
**status** | **String** | Defines the clearing status of an endpoint. | [optional] 
**batch_number** | **String** | Defines the batch number of an endpoint clearing process. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EndpointResponse.new(endpoint_id: CAFEX VISA,
                                 status: APPROVED,
                                 batch_number: 000)
```


