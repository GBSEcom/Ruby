# OpenapiClient::ReferencedOrderPaymentTokenizationRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of tokenization request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same app. | [optional] 
**billing_address** | [**Address**](Address.md) |  | [optional] 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | 
**account_verification** | **BOOLEAN** | If the account should be verified prior to token creation. | [optional] [default to false]
**referenced_order_id** | **String** | Retrieves the payment instrument information from an existing order. | 


