# OpenapiClient::UnionPayAuthenticationVerificationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**request_type** | **String** | Object name of the authentication verification request. | 
**security_code** | **String** | Card security code if required by merchant. | [optional] 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**sms_verification_code** | **String** | Customer mobile number for SMS verification. | 


