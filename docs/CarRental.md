# OpenapiClient::CarRental

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agreement_number** | **String** | The car rental agreement number. | [optional] 
**renter_name** | **String** | The name of the person renting the car. | [optional] 
**return_city** | **String** | The city where the rental ends and the car is returned. | [optional] 
**return_date** | **Date** | The date the car rental ends and the car is returned. | [optional] 
**pickup_date** | **Date** | The date the car rental begins. | [optional] 
**rental_class_id** | **String** | The classification of the rental car. | [optional] 
**extra_charges** | [**Array&lt;CarRentalExtraCharges&gt;**](CarRentalExtraCharges.md) | Array containing information about charges other than the rental rate. | [optional] 
**no_show_indicator** | **Boolean** | Indicates if the transaction is related to a no-show charge. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CarRental.new(agreement_number: 100001145699,
                                 renter_name: Frank Bisignano,
                                 return_city: Atlanta,
                                 return_date: null,
                                 pickup_date: null,
                                 rental_class_id: ABCDEF,
                                 extra_charges: [{&quot;chargeItem&quot;:&quot;GAS&quot;},{&quot;chargeItem&quot;:&quot;EXTRA_MILEAGE&quot;}],
                                 no_show_indicator: false)
```


