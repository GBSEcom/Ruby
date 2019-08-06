# OpenapiClient::Merchant

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mcc** | **String** | The 4-digit Merchant Category Code. The merchant might be associated with multiple MCCs. In that case the MCC provided here will be the one that better describes the current transaction. | [optional] 
**merchant_unique_id** | **String** | The unique ID of this merchant. Must be unique for the entire system (not just within a specific industry). | 
**location** | [**MerchantLocation**](MerchantLocation.md) |  | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the merchant that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Merchant.new(mcc: 7311,
                                 merchant_unique_id: 9a0f5fe8-f907-4b06-88e9-8dd5141cbf44,
                                 location: null,
                                 user_defined: {&quot;highFraudVolume&quot;:true})
```


