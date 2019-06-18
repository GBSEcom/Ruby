# OpenapiClient::ProcessorData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_number** | **String** | Reference transaction ID. | [optional] 
**authorization_code** | **String** | Code returned to confirm transaction. | [optional] 
**response_code** | **String** | Response code from endpoints. | [optional] 
**network** | **String** | Network used for transaction. | [optional] 
**association_response_code** | **String** | Raw response code from issuer. | [optional] 
**response_message** | **String** | Message returned from endpoints. | [optional] 
**avs_response** | [**AVSResponse**](AVSResponse.md) |  | [optional] 
**security_code_response** | **String** | Code returned for CVV. | [optional] 
**merchant_advice_code_indicator** | **String** | Code to map merchant advice code to ISO specification. | [optional] 


