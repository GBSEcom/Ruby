# OpenapiClient::PaymentDevicePreAuthTransactionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentDevicePaymentMethod**](PaymentDevicePaymentMethod.md) |  | 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentDevicePreAuthTransactionAllOf.new(payment_method: null,
                                 create_token: null,
                                 settlement_split: [{&quot;merchantID&quot;:&quot;100000001&quot;,&quot;amount&quot;:25.06},{&quot;merchantID&quot;:&quot;100000002&quot;,&quot;amount&quot;:15.07}],
                                 stored_credentials: null,
                                 split_shipment: null)
```


