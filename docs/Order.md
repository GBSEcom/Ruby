# OpenapiClient::Order

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_id** | **String** | Note - Client Order ID if supplied by client. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM). | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**industry_specific_extensions** | [**IndustrySpecificExtensions**](IndustrySpecificExtensions.md) |  | [optional] 
**purchase_card** | [**PurchaseCards**](PurchaseCards.md) |  | [optional] 
**installment_options** | [**InstallmentOptions**](InstallmentOptions.md) |  | [optional] 
**revolving_options** | [**RevolvingOptions**](RevolvingOptions.md) |  | [optional] 
**stand_in_details** | [**StandInDetails**](StandInDetails.md) |  | [optional] 
**soft_descriptor** | [**SoftDescriptor**](SoftDescriptor.md) |  | [optional] 
**additional_details** | [**AdditionalDetails**](AdditionalDetails.md) |  | [optional] 
**bancontact_qr** | [**BancontactQR**](BancontactQR.md) |  | [optional] 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Order.new(order_id: ABC12345,
                                 billing: null,
                                 shipping: null,
                                 industry_specific_extensions: null,
                                 purchase_card: null,
                                 installment_options: null,
                                 revolving_options: null,
                                 stand_in_details: null,
                                 soft_descriptor: null,
                                 additional_details: null,
                                 bancontact_qr: null,
                                 client_locale: null)
```


