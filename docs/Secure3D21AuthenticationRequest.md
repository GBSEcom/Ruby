# OpenapiClient::Secure3D21AuthenticationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**term_url** | **String** | The result of the authentication will be sent to this URL. If not provided, a term URL will be dynamically generated. Note this must be a valid URL (special characters should be URL-encoded). | [optional] 
**method_notification_url** | **String** | The 3DS method iframe and transaction ID will be sent here. Note this must be a valid URL (special characters should be URL-encoded). | [optional] 
**challenge_indicator** | **String** | Indicates whether or not a challenge should be performed. 01 &#x3D; No preference (You have no preference whether a challenge should be performed. This is the default value) 02 &#x3D; No challenge requested (You prefer that no challenge should be performed) 03 &#x3D; Challenge requested: 3DS Requestor Preference (You prefer that a challenge should be performed) 04 &#x3D; Challenge requested: Mandate (There are local or regional mandates that mean that a challenge must be performed) The following are applicable only for 3DS 2.2 protocol. 05 &#x3D; No challenge requested (transactional risk analysis is already performed) 06 &#x3D; No challenge requested (Data share only) 07 &#x3D; No challenge requested (strong consumer authentication is already performed) 08 &#x3D; No challenge requested (utilise whitelist exemption if no challenge required) 09 &#x3D; Challenge requested (whitelist prompt requested if challenge required)  | [optional] [default to &#39;01&#39;]
**challenge_window_size** | **String** | Defines the size of the challenge window displayed to customers during authentication. 01 &#x3D; 250 x 400 02 &#x3D; 390 x 400 03 &#x3D; 500 x 600 04 &#x3D; 600 x 400 05 &#x3D; Full screen  | [optional] 
**browser_java_script_enabled** | **Boolean** | Indicates if the browser issuing the request is capable of performing JavaScript. | [optional] 
**requestor_authentication_indicator** | **String** | Indicates whether or not a challenge should be performed. 01 &#x3D; Payment transaction 02 &#x3D; Recurring transaction 03 &#x3D; Installment transaction 04 &#x3D; Add card 05 &#x3D; Maintain card 06 &#x3D; Card holder verification as part of EMV token ID and Value  | [optional] [default to &#39;01&#39;]
**secure3_d_device_channel** | **String** | 02 &#x3D; BRW 03 &#x3D; 3RI  | [optional] 
**secure3_d_three_ri_indicator** | **String** | 01 &#x3D; Recurring transaction 02 &#x3D; Instalment transaction 03 &#x3D; Add card 04 &#x3D; Maintain card information 05 &#x3D; Account verification 06 &#x3D; Split/delayed shipment 07 &#x3D; Top-up 08 &#x3D; Mail Order 09 &#x3D; Telephone Order 10 &#x3D; Whitelist status check 11 &#x3D; Other payment  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3D21AuthenticationRequest.new(term_url: https://www.mywebshop.com/process3dSecure,
                                 method_notification_url: https://www.mywebshop.com/process3dSecureMethodNotification?transactionReferenceNumber&#x3D;ffffffff-ba0b-539f-8000-016b2343ad7e,
                                 challenge_indicator: 01,
                                 challenge_window_size: 01,
                                 browser_java_script_enabled: true,
                                 requestor_authentication_indicator: 01,
                                 secure3_d_device_channel: 02,
                                 secure3_d_three_ri_indicator: 01)
```


