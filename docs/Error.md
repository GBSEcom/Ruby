# OpenapiClient::Error

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | Uniquely identifies an error condition. Client applications need to read and handle errors based on this. | [optional] 
**message** | **String** | A generic description of the error condition. | [optional] 
**details** | [**Array&lt;ErrorDetails&gt;**](ErrorDetails.md) | Detailed information about message format errors. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Error.new(code: 2303,
                                 message: Invalid credit card number,
                                 details: null)
```


