# OpenapiClient::SubMerchantSplit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**merchant_id** | **String** | ID of merchant for tracking. | 
**amount** | **Float** | The amount each sub-merchant receives. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SubMerchantSplit.new(merchant_id: 100000001,
                                 amount: 25.06)
```


