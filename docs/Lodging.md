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

instance = OpenapiClient::Lodging.new(arrival_date: Fri May 14 19:00:00 CDT 2010,
                                 departure_date: Sat Jan 27 18:00:00 CST 2018,
                                 folio_number: 12200054891,
                                 extra_charges: [{&quot;chargeItem&quot;:&quot;MINI_BAR&quot;},{&quot;chargeItem&quot;:&quot;OTHER&quot;}],
                                 no_show_indicator: false)
```


