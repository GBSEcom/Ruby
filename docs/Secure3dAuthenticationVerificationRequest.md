# OpenapiClient::Secure3dAuthenticationVerificationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**request_type** | **String** | Object name of the authentication verification request. | 
**security_code** | **String** | Card security code if required by merchant. | [optional] 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**payer_authentication_response** | **String** | A formatted message providing results of the issuer’s cardholder authentication. | 
**merchant_data** | **String** | Formatted string encoding transaction time, order ID, and return URL data. | 


