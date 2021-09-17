# OpenapiClient::SubMerchantData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mcc** | **String** | Merchant category code. | 
**legal_name** | **String** | Store legal name. | [optional] 
**email** | **String** | Sub-merchant email. | [optional] 
**timezone** | **String** | Timezone. | [optional] 
**address** | [**Address**](Address.md) |  | [optional] 
**document** | [**Document**](Document.md) |  | [optional] 
**merchant_id** | **String** | Sub-merchant ID. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SubMerchantData.new(mcc: 7311,
                                 legal_name: Walmart Inc.,
                                 email: abcd.1234@fiserv.com,
                                 timezone: Europe/London,
                                 address: null,
                                 document: null,
                                 merchant_id: 987654321)
```


