# OpenapiClient::Secure3DAuthenticationResponseParams

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payer_authentication_request** | **String** | Message sent from merchant server to authenticate the cardholder. | [optional] 
**term_url** | **String** | Terminal URL for processing request. | [optional] 
**merchant_data** | **String** | Formatted string encoding transaction time, order ID, and return URL data. | [optional] 
**acs_url** | **String** | The URL for the authentication redirect for the merchant. | [optional] 
**c_req** | **String** | The CReq message initiates cardholder interaction in a 3DS 2.x challenge flow and carries authentication data from the cardholder. | [optional] 
**session_data** | **String** | Customer web browser session data. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Secure3DAuthenticationResponseParams.new(payer_authentication_request: c7fb83b8ag...73t4a827t4af8738a,
                                 term_url: https://api.example.com/redirectToAcs,
                                 merchant_data: MD123...sdfk,
                                 acs_url: https://3ds-acs.test.modirum.com/mdpayacs/pareq,
                                 c_req: ewogICAiYWNzVHJhbnNJRCIgOiAiMDAwMDAwMDAtMDAwNS01YTVhLTgwMDAtMDE2ZmE1NTYzODMyIiwKICAgImNoYWxsZW5nZVdpbmRvd1NpemUiIDogIjAzIiwKICAgIm1lc3NhZ2VUeXBlIiA6ICJDUmVxIiwKICAgIm1lc3NhZ2VWZXJzaW9uIiA6ICIyLjEuMCIsCiAgICJ0aHJlZURTU2VydmVyVHJhbnNJRCIgOiAiZGVmOWZiZDgtZjkzNS01YzcyLTgwMDAtMDAwMDAwMDgyOWVkIgp9,
                                 session_data: 50F2156E03083CA665BCB4..)
```


