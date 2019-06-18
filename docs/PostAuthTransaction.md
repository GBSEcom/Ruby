# OpenapiClient::PostAuthTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the secondary transaction request. | 
**store_id** | **String** | An optional outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**comments** | **String** | Comment for the secondary transaction. | [optional] 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 


