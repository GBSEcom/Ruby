# OpenapiClient::PaymentTokenPreAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentTokenPaymentMethod**](PaymentTokenPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**authentication_request** | [**AuthenticationRequest**](AuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**AuthenticationResult**](AuthenticationResult.md) |  | [optional] 
**decremental_flag** | **Boolean** | This flag can only be used in a preAuth transaction that updates the amount of a previous preAuth transaction to either increase the preAuth amount (DecrementalPreAuthFlag &#x3D; false) or decrease the preAuth amount (DecrementalPreAuthFlag &#x3D; true). | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentTokenPreAuthTransaction.new(payment_method: null,
                                 stored_credentials: null,
                                 split_shipment: null,
                                 settlement_split: [{&quot;merchantID&quot;:&quot;100000001&quot;,&quot;amount&quot;:25.06},{&quot;merchantID&quot;:&quot;100000002&quot;,&quot;amount&quot;:15.07}],
                                 authentication_request: null,
                                 authentication_result: null,
                                 decremental_flag: false)
```


