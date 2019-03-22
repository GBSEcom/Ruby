# OpenapiClient::PaymentPayMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**method_type** | **String** | Unique ID for the payment method type. | 
**method_id** | **String** | The unique ID of this payment method if it was previously registered with a registration/method or if it is currently being registered. Must be unique for the entire system (not just within a specific merchant or industry). Mandatory if being used inside a registration/method. | [optional] 
**method_alias** | **String** | The address that should be used to send billing information for this payment method. | [optional] 
**card** | [**Card**](Card.md) |  | 
**provider** | **String** | The Wallet provider. This field should be normalized before sending through the API. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the method that might be helpful for fraud detection. | [optional] 


