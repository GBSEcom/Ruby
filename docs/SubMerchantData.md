# OpenapiClient::SubMerchantData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mcc** | **String** | Merchant category code. | 
**legal_name** | **String** | Store legal name. | [optional] 
**timezone** | **String** | Timezone. | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**document** | [**Document**](Document.md) |  | [optional] 
**merchant_id** | **String** | Sub-merchant ID. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SubMerchantData.new(mcc: 7311,
                                 legal_name: Walmart Inc.,
                                 timezone: Europe/London,
                                 address: null,
                                 document: null,
                                 merchant_id: 987654321)
```


