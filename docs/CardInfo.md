# OpenapiClient::CardInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brand** | **String** | The card brand. | [optional] 
**brand_product_id** | **String** | The product ID of the brand. | [optional] 
**card_function** | [**CardFunction**](CardFunction.md) |  | [optional] 
**commercial_card** | **String** | Indicates whether it is a corporate or non-corporate card. | [optional] 
**issuer_country** | **String** | The country of the issuer. | [optional] 
**issuer_name** | **String** | The name of the issuer. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardInfo.new(brand: VISA,
                                 brand_product_id: VISA BUSINESS,
                                 card_function: null,
                                 commercial_card: CORPORATE,
                                 issuer_country: DE,
                                 issuer_name: First National Bank of Omaha)
```


