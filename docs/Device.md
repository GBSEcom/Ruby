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
**rooted** | **BOOLEAN** | A flag indicating that the device has been altered to allow privileged access to users. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise. | [optional] 
**malware_detected** | **BOOLEAN** | A flag indicating that malware was detected on the mobile phone. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the device that might be helpful for fraud detection. | [optional] 


