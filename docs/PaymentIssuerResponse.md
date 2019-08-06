# OpenapiClient::PaymentIssuerResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | The verification response code, as sent by the verification system. | 
**status** | **String** | The interpretation of the response code. Valid values are \&quot;approved\&quot; - The verification was conducted and is approved. \&quot;declined\&quot; - The verification was conducted and is not approved. \&quot;disabled\&quot; - The verification was not conducted because it was not requested or disabled in the verification. \&quot;unknown\&quot; - The verification was attempted but it failed due to some system error (e.g. timeout). | [optional] 
**scheme** | **String** | An identifier of the system/specification from which the code was received, and how the status was derived. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentIssuerResponse.new(code: 100,
                                 status: approved,
                                 scheme: visa)
```


