# OpenapiClient::Order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Client Order ID if supplied by client. | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**industry_specific_extensions** | [**IndustrySpecificExtensions**](IndustrySpecificExtensions.md) |  | [optional] 
**purchase_card** | [**PurchaseCards**](PurchaseCards.md) |  | [optional] 
**installment_options** | [**InstallmentOptions**](InstallmentOptions.md) |  | [optional] 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 
**bancontact_qr** | [**BancontactQR**](BancontactQR.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Order.new(order_id: ABC12345,
                                 billing: null,
                                 shipping: null,
                                 industry_specific_extensions: null,
                                 purchase_card: null,
                                 installment_options: null,
                                 soft_descriptor: null,
                                 additional_details: null,
                                 bancontact_qr: null)
```


