# OpenapiClient::Device

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_type** | **String** | Defines the type of this object. | 
**device_id** | **String** | The unique ID of the device. Must be unique for the entire system (not just within a specific merchant or industry). | 
**networks** | [**Array&lt;DeviceNetworks&gt;**](DeviceNetworks.md) | Information about the networks associated with the device. | [optional] 
**latitude** | **Float** | The GPS decimal latitude, ranging from (-90.0 to 90.0) where positive numbers indicate locations North of the equator. | [optional] 
**longitude** | **Float** | The GPS decimal longitude, ranging from (-180.0 to 180.0) where positive numbers indicate locations East of the IERS Reference Meridian. | [optional] 
**imei** | **String** | The device&#39;s International Mobile Equipment Identity (IMEI) as described in IETF RFC7254. | [optional] 
**model** | **String** | The device&#39;s model name. | [optional] 
**manufacturer** | **String** | The device&#39;s manufacturer. | [optional] 
**timezone_offset** | **String** | The timezone offset from UTC to the devices timezone configuration, specified in the format +hh:mm. | [optional] 
**rooted** | **Boolean** | A flag indicating that the device has been altered to allow privileged access to users. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise. | [optional] 
**malware_detected** | **Boolean** | A flag indicating that malware was detected on the mobile phone. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the device that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Device.new(device_type: device/mobile,
                                 device_id: BDE000:008945:58AC03:F02569,
                                 networks: [{&quot;networkType&quot;:&quot;network/wifi&quot;,&quot;ip&quot;:&quot;10.201.0.244&quot;,&quot;phoneNumber&quot;:&quot;302-123-4567&quot;,&quot;carrierName&quot;:&quot;T-Mobile&quot;,&quot;mobileCountryCode&quot;:&quot;310&quot;,&quot;mobileNetworkCode&quot;:&quot;004&quot;,&quot;subscriptionIdentificationNumber&quot;:&quot;123456789&quot;,&quot;locationAreaCode&quot;:&quot;12345&quot;,&quot;cellId&quot;:&quot;2224&quot;,&quot;standard&quot;:&quot;GSM&quot;,&quot;mac&quot;:&quot;02:00:00:00:00:00&quot;,&quot;ssid&quot;:&quot;Boston-5G-1&quot;,&quot;bssid&quot;:&quot;e8:fc:af:fb:4b:8c&quot;,&quot;userDefined&quot;:{&quot;usedData&quot;:&quot;50MB&quot;}}],
                                 latitude: 41.14961,
                                 longitude: -8.61099,
                                 imei: 49-015420-323751,
                                 model: iPhone 10,
                                 manufacturer: Apple,
                                 timezone_offset: +02:00,
                                 rooted: false,
                                 malware_detected: false,
                                 user_defined: {&quot;battery&quot;:&quot;95%&quot;})
```


