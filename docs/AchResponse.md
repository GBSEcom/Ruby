# OpenapiClient::AchResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response_code** | **String** | Response code for TeleCheck authentication decision in the sale response message. | [optional] 
**approval_code** | **String** | Code provided if check is approved. | [optional] 
**reference_number** | **String** | Reference number. | [optional] 
**preferred_flag** | **String** | Preferred flag. | [optional] 
**transaction_status** | **String** | Indicates the result of the requested authorization and is returned in the sale response. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AchResponse.new(response_code: 49,
                                 approval_code: A123,
                                 reference_number: 1234567,
                                 preferred_flag: Y,
                                 transaction_status: 1)
```


