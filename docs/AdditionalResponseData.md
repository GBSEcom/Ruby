# OpenapiClient::AdditionalResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**issuing_bank_name** | **String** | Issuing Bank Name. | [optional] 
**country_of_issuance** | **String** | Country of Issuance. | [optional] 
**card_product_id** | **String** | Card Product ID. | [optional] 
**detailed_product_id** | **String** | Detailed Product ID. | [optional] 
**association_response_code_adtl** | **String** | Association Response Code. | [optional] 
**card_brand** | **String** | Card Brand. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AdditionalResponseData.new(issuing_bank_name: USA Bank,
                                 country_of_issuance: USA,
                                 card_product_id: H,
                                 detailed_product_id: C,
                                 association_response_code_adtl: 00,
                                 card_brand: M)
```


