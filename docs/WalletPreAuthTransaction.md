# OpenapiClient::WalletPreAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet_payment_method** | [**WalletPaymentMethod**](WalletPaymentMethod.md) |  | 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**payment_facilitator** | [**PaymentFacilitator**](PaymentFacilitator.md) |  | [optional] 
**decremental_flag** | **Boolean** | This flag can only be used in a preAuth transaction that updates the amount of a previous preAuth transaction to either increase the preAuth amount (DecrementalPreAuthFlag &#x3D; false) or decrease the preAuth amount (DecrementalPreAuthFlag &#x3D; true). | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::WalletPreAuthTransaction.new(wallet_payment_method: null,
                                 split_shipment: null,
                                 payment_facilitator: null,
                                 decremental_flag: false)
```


