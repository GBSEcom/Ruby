# OpenapiClient::Lodging

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**arrival_date** | **Date** | Date of arrival. | [optional] 
**departure_date** | **Date** | Date of departure. | [optional] 
**folio_number** | **String** | Portfolio number. | [optional] 
**extra_charges** | [**Array&lt;LodgingExtraCharges&gt;**](LodgingExtraCharges.md) | Information about charges other than base lodging. | [optional] 
**no_show_indicator** | **Boolean** | Indicates if the transaction is associated with a delayed or no-show penalty. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Lodging.new(arrival_date: null,
                                 departure_date: null,
                                 folio_number: 12200054891,
                                 extra_charges: [{&quot;chargeItem&quot;:&quot;MINI_BAR&quot;},{&quot;chargeItem&quot;:&quot;OTHER&quot;}],
                                 no_show_indicator: false)
```


