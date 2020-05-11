# OpenapiClient::PaymentCardPreAuthTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentCardPaymentMethod**](PaymentCardPaymentMethod.md) |  | 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 
**create_token** | [**CreatePaymentToken**](CreatePaymentToken.md) |  | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**settlement_split** | [**Array&lt;SubMerchantSplit&gt;**](SubMerchantSplit.md) | Settle with multiple sub-merchants, sale and preAuth only. | [optional] 
**authentication_request** | [**AuthenticationRequest**](AuthenticationRequest.md) |  | [optional] 
**authentication_result** | [**AuthenticationResult**](AuthenticationResult.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardPreAuthTransaction.new(payment_method: null,
                                 stored_credentials: null,
                                 create_token: null,
                                 split_shipment: null,
                                 settlement_split: [{&quot;merchantID&quot;:&quot;100000001&quot;,&quot;amount&quot;:25.06},{&quot;merchantID&quot;:&quot;100000002&quot;,&quot;amount&quot;:15.07}],
                                 authentication_request: null,
                                 authentication_result: null)
```


