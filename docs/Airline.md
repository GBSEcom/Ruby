# OpenapiClient::Airline

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**passenger_name** | **String** | The passenger name associated with the transaction. | [optional] 
**ticket_number** | **String** | The airline ticket number associated with the transaction. | [optional] 
**issuing_carrier** | **String** | The carrier that issued the ticket. | [optional] 
**carrier_name** | **String** | The carrier associated with the transaction. | [optional] 
**travel_agency_iata_code** | **String** | The IATA code associated with the travel agency. | [optional] 
**travel_agency_name** | **String** | The business name of the travel agency. | [optional] 
**airline_plan_number** | **String** | The airline plan number associated with the transaction. | [optional] 
**airline_invoice_number** | **String** | The invoice number used by the airline. | [optional] 
**reservation_system** | **String** | The reservation system used to create the ticket. | [optional] 
**restricted** | **BOOLEAN** | If the transaction is associated with a restricted class fare. | [optional] 
**travel_route** | [**Array&lt;AirlineTravelRoute&gt;**](AirlineTravelRoute.md) | Array containing up to 4 items that describe the route associated with the transaction. | [optional] 
**related_ticket_number** | **String** | The number of any other tickets associated with the transaction ticket. | [optional] 
**ancillary_service_category** | [**Array&lt;AirlineAncillaryServiceCategory&gt;**](AirlineAncillaryServiceCategory.md) | Identify the purchase of ancillary goods or services with a false value. If this element is not provided, the transaction is assumed to be a purchase of an airline ticket. | [optional] 
**ticket_purchase** | **BOOLEAN** | Identifies if the transaction is a ticket purchase. | [optional] 


