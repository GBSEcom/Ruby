# OpenapiClient::Disbursement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**disbursement_type** | **String** | The type of disbursement. | 
**sender_info** | [**SenderInfo**](SenderInfo.md) |  | 
**receiver_info** | [**ReceiverInfo**](ReceiverInfo.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Disbursement.new(disbursement_type: FundingTransactionType,
                                 sender_info: null,
                                 receiver_info: null)
```


