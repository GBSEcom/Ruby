# SwaggerClient::Airline

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passenger_name** | **String** |  | [optional] 
**ticket_number** | **String** |  | [optional] 
**issuing_carrier** | **String** |  | [optional] 
**carrier_name** | **String** |  | [optional] 
**travel_agency_iata_code** | **String** |  | [optional] 
**travel_agency_name** | **String** |  | [optional] 
**airline_plan_number** | **String** |  | [optional] 
**airline_invoice_number** | **String** |  | [optional] 
**reservation_system** | **String** |  | [optional] 
**restricted** | **BOOLEAN** |  | [optional] 
**travel_route** | [**Array&lt;AirlineTravelRoute&gt;**](AirlineTravelRoute.md) |  | [optional] 
**related_ticket_number** | **String** |  | [optional] 
**ancillary_service_category** | [**Array&lt;AirlineAncillaryServiceCategory&gt;**](AirlineAncillaryServiceCategory.md) | Identify the purchase of ancillary goods or services with a false value. If this element is not provided, the transaction is assumed to be a purchase of an airline ticket. | [optional] 
**ticket_purchase** | **BOOLEAN** |  | [optional] 


