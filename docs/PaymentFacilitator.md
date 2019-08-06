# OpenapiClient::PaymentFacilitator

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_merchant_id** | **String** | External merchant ID of the payment facilitator. | 
**payment_facilitator_id** | **String** | Payment facilitator ID supplied during boarding. | 
**sale_organization_id** | **String** | Independent sales organization (ISO) ID provided by Mastercard. | [optional] 
**name** | **String** | Payment facilitator name. | 
**sub_merchant_data** | [**SubMerchantData**](SubMerchantData.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentFacilitator.new(external_merchant_id: 151623999,
                                 payment_facilitator_id: 12345678901,
                                 sale_organization_id: 13579246801,
                                 name: First Reseller,
                                 sub_merchant_data: null)
```


