# OpenapiClient::ChinaDomestic

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product_code** | **String** | Use this to indicate the product code according to the product category list. | 
**product_quantity** | **Integer** | The quantity. | 
**product_price** | **Float** | Rate amount in 3 decimal 12 bytes total digit. | 
**product_description** | **String** | The product description. | 
**redirect_url** | **String** | Use this to indicate the product code according to the product category list. | 
**limit_card_function_to_debit** | **Boolean** | Use this to limit card functions to debit cards. | [optional] 
**customer_id** | **String** | Use this to indicate the CUP customer ID if known. | [optional] 
**bank_id** | **String** | Use this to indicate the CUP bank ID if known. | [optional] 
**open_id** | **String** | Use this as unique identifier of WeChat user which is corresponded to the appid of merchant. The field is only applicable for ChinaDomesticPaymentMethod - brand &#x3D; WECHAT_DOMESTIC | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ChinaDomestic.new(product_code: R2D2C3PO,
                                 product_quantity: 10,
                                 product_price: 3.2,
                                 product_description: Best product ever,
                                 redirect_url: www.urlredirectedto.com,
                                 limit_card_function_to_debit: true,
                                 customer_id: ID3Bs,
                                 bank_id: 123456,
                                 open_id: op5EP1G8XtyYH1VvmAbleB3AYgc8)
```


