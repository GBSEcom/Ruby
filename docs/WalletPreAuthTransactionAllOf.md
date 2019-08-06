# OpenapiClient::WalletPreAuthTransactionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**wallet_payment_method** | [**WalletPaymentMethod**](WalletPaymentMethod.md) |  | 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**payment_facilitator** | [**PaymentFacilitator**](PaymentFacilitator.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::WalletPreAuthTransactionAllOf.new(wallet_payment_method: null,
                                 split_shipment: null,
                                 payment_facilitator: null)
```


