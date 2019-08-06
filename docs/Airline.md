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
**restricted** | **Boolean** | If the transaction is associated with a restricted class fare. | [optional] 
**travel_route** | [**Array&lt;AirlineTravelRoute&gt;**](AirlineTravelRoute.md) | Array containing up to 4 items that describe the route associated with the transaction. | [optional] 
**related_ticket_number** | **String** | The number of any other tickets associated with the transaction ticket. | [optional] 
**ancillary_service_category** | [**Array&lt;AirlineAncillaryServiceCategory&gt;**](AirlineAncillaryServiceCategory.md) | Identify the purchase of ancillary goods or services with a false value. If this element is not provided, the transaction is assumed to be a purchase of an airline ticket. | [optional] 
**ticket_purchase** | **Boolean** | Identifies if the transaction is a ticket purchase. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Airline.new(passenger_name: Jeff Yabuki,
                                 ticket_number: 52300448,
                                 issuing_carrier: Frontier Airlines,
                                 carrier_name: Delta Air Lines,
                                 travel_agency_iata_code: 10584410,
                                 travel_agency_name: A Travis Gent LLC,
                                 airline_plan_number: 11,
                                 airline_invoice_number: 664422,
                                 reservation_system: DELTA,
                                 restricted: true,
                                 travel_route: [{&quot;departureDate&quot;:&quot;2018-01-28&quot;,&quot;origin&quot;:&quot;MIA&quot;,&quot;destination&quot;:&quot;ATL&quot;,&quot;carrierCode&quot;:&quot;DL&quot;,&quot;serviceClass&quot;:&quot;J&quot;,&quot;stopoverType&quot;:&quot;DIRECT&quot;,&quot;fareBasisCode&quot;:&quot;F&quot;,&quot;departureTax&quot;:75,&quot;flightNumber&quot;:&quot;765599&quot;}],
                                 related_ticket_number: 11223344556,
                                 ancillary_service_category: [{&quot;serviceCategory&quot;:&quot;BAGGAGE_FEE&quot;},{&quot;serviceCategory&quot;:&quot;CARBON_OFFSET&quot;}],
                                 ticket_purchase: true)
```


