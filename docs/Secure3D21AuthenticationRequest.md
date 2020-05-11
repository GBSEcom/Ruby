# OpenapiClient::Secure3D21AuthenticationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term_url** | **String** | The result of the authentication will be sent to this URL. If not provided, a term URL will be dynamically generated. | [optional] 
**method_notification_url** | **String** | The 3DS method iframe and transaction ID will be sent here. | [optional] 
**challenge_indicator** | **String** | Indicates whether or not a challenge should be performed. 01 &#x3D; No preference (You have no preference whether a challenge should be performed. This is the default value) 02 &#x3D; No challenge requested (You prefer that no challenge should be performed) 03 &#x3D; Challenge requested: 3DS Requestor Preference (You prefer that a challenge should be performed) 04 &#x3D; Challenge requested: Mandate (There are local or regional mandates that mean that a challenge must be performed)  | [optional] [default to &#39;01&#39;]
**challenge_window_size** | **String** | Defines the size of the challenge window displayed to customers during authentication. 01 &#x3D; 250 x 400 02 &#x3D; 390 x 400 03 &#x3D; 500 x 600 04 &#x3D; 600 x 400 05 &#x3D; Full screen  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3D21AuthenticationRequest.new(term_url: https://www.mywebshop.com/process3dSecure,
                                 method_notification_url: https://www.mywebshop.com/process3dSecureMethodNotification?transactionReferenceNumber&#x3D;ffffffff-ba0b-539f-8000-016b2343ad7e,
                                 challenge_indicator: 01,
                                 challenge_window_size: 01)
```


