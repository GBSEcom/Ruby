# OpenapiClient::FraudRegistrationDeviceItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network_type** | **String** | Defines the type of network associated with the device. | 
**ip** | **String** | The IPv4 or IPv6 address of the device if the network assigned one. | [optional] 
**mac** | **String** | The MAC address of the device that is connected to the Wi-Fi network. | [optional] 
**ssid** | **String** | The Wi-Fi networks Service Set Identifier (SSID). | [optional] 
**bssid** | **String** | The Wi-Fi networks Basic Service Set Identifier (BSSID). | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the network that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudRegistrationDeviceItems.new(network_type: network/wifi,
                                 ip: 10.201.0.244,
                                 mac: 02:00:00:00:00:00,
                                 ssid: Boston-5G-1,
                                 bssid: e8:fc:af:fb:4b:8c,
                                 user_defined: {&quot;battery&quot;:&quot;5h 10m&quot;})
```


