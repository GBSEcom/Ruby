# OpenapiClient::PaymentDevicePreAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentDevicePaymentMethod**](PaymentDevicePaymentMethod.md) |  | 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**decremental_flag** | **Boolean** | This flag can only be used in a preAuth transaction that updates the amount of a previous preAuth transaction to either increase the preAuth amount (DecrementalPreAuthFlag &#x3D; false) or decrease the preAuth amount (DecrementalPreAuthFlag &#x3D; true). | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentDevicePreAuthTransaction.new(payment_method: null,
                                 create_token: null,
                                 settlement_split: [{&quot;merchantID&quot;:&quot;100000001&quot;,&quot;amount&quot;:25.06},{&quot;merchantID&quot;:&quot;100000002&quot;,&quot;amount&quot;:15.07}],
                                 stored_credentials: null,
                                 split_shipment: null,
                                 decremental_flag: false)
```


