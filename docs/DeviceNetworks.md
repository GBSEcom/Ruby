# OpenapiClient::DeviceNetworks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**network_type** | **String** | Defines the type of network associated with the device. | 
**ip** | **String** | The IPv4 or IPv6 address of the device if the network assigned one. | [optional] 
**phone_number** | **String** | The devices primary phone number. This value should be supplied directly without any transformation (e.g. removal of spaces, hyphens or parentheses). If this data is available in segregated fields, it should be concatenated using a blank space (\&quot; \&quot;) as a separator. | [optional] 
**carrier_name** | **String** | The network carrier name. | [optional] 
**mobile_country_code** | **String** | The Mobile Country Code (MCC) as described in the ITUs E.212 specification. | [optional] 
**mobile_network_code** | **String** | The Mobile Network Code (MNC) as described in the ITUs E.212 specification. | [optional] 
**subscription_identification_number** | **String** | The Mobile Subscription Identification Number code (MSIN) as described in the ITUs E.212 specification. | [optional] 
**location_area_code** | **String** | The Location Area Code (LAC) is a 16-bit identifier for a region that is covered by a set of network antennas. | [optional] 
**cell_id** | **String** | The Cell ID (CID) is identifier for a specific Base Transceiver Station (BTS) within a specific Location Area Code (LAC). | [optional] 
**standard** | **String** | An identifier of the network standard used. | [optional] 
**mac** | **String** | The MAC address of the device that is connected to the Wi-Fi network. | [optional] 
**ssid** | **String** | The Wi-Fi networks Service Set Identifier (SSID). | [optional] 
**bssid** | **String** | The Wi-Fi networks Basic Service Set Identifier (BSSID). | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the network that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DeviceNetworks.new(network_type: network/wifi,
                                 ip: 10.201.0.244,
                                 phone_number: 302-123-4567,
                                 carrier_name: T-Mobile,
                                 mobile_country_code: 310,
                                 mobile_network_code: 004,
                                 subscription_identification_number: 123456789,
                                 location_area_code: 12345,
                                 cell_id: 2224,
                                 standard: GSM,
                                 mac: 02:00:00:00:00:00,
                                 ssid: Boston-5G-1,
                                 bssid: e8:fc:af:fb:4b:8c,
                                 user_defined: {&quot;usedData&quot;:&quot;50MB&quot;})
```


