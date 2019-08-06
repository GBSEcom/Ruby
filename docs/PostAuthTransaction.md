# OpenapiClient::PostAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_amount** | [**Amount**](Amount.md) |  | 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PostAuthTransaction.new(transaction_amount: null,
                                 transaction_origin: null,
                                 split_shipment: null,
                                 soft_descriptor: null)
```


