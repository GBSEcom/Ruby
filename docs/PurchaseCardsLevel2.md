# OpenapiClient::PurchaseCardsLevel2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customer_reference_id** | **String** | Customer code/customer reference ID. The max length supported for Visa is 12 and MasterCard is 17. | [optional] 
**supplier_invoice_number** | **String** | Purchase identifier/merchant-related data. | [optional] 
**supplier_vat_registration_number** | **String** | Merchant VAT registration/single business reference number/merchant tax ID or corporation VAT number. | [optional] 
**total_discount_amount_and_rate** | [**AdditionalAmountRate**](AdditionalAmountRate.md) |  | [optional] 
**vat_shipping_amount_and_rate** | [**AdditionalAmountRate**](AdditionalAmountRate.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PurchaseCardsLevel2.new(customer_reference_id: abcdef123xyz,
                                 supplier_invoice_number: 0000000065348,
                                 supplier_vat_registration_number: 10001174242,
                                 total_discount_amount_and_rate: null,
                                 vat_shipping_amount_and_rate: null)
```


