# OpenapiClient::PurchaseCardsLevel3LineItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commodity_code** | **String** | The commodity code used to classify the item purchased. | [optional] 
**product_code** | **String** | Merchant product identifier/the Universal Product Code (UPC) of the item purchased. | [optional] 
**description** | **String** | The description. | [optional] 
**quantity** | **Integer** | The quantity. | [optional] 
**unit_measure** | **String** | The unit of measure. | [optional] 
**unit_price** | **Float** | Rate amount in 3 decimal 12 bytes total digit. | [optional] 
**vat_amount_and_rate** | [**AdditionalAmountRate**](AdditionalAmountRate.md) |  | [optional] 
**discount_amount_and_rate** | [**AdditionalAmountRate**](AdditionalAmountRate.md) |  | [optional] 
**line_item_total** | **Float** | Rate amount in 3 decimal 12 bytes total digit. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PurchaseCardsLevel3LineItems.new(commodity_code: ab12,
                                 product_code: 0001212120888,
                                 description: Dinner and movie,
                                 quantity: 5,
                                 unit_measure: 25,
                                 unit_price: 30.075,
                                 vat_amount_and_rate: null,
                                 discount_amount_and_rate: null,
                                 line_item_total: 39.075)
```


