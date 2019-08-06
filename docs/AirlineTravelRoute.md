# OpenapiClient::AirlineTravelRoute

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**departure_date** | **Date** | Date of departure. | [optional] 
**origin** | **String** | The IATA code for the departure airport. | [optional] 
**destination** | **String** | The IATA code for the destination. airport. | [optional] 
**carrier_code** | **String** | The IATA code for the carrier. | [optional] 
**service_class** | **String** | The airline code for the service class of the ticket. | [optional] 
**stopover_type** | **String** | Indicates whether the route is direct. | [optional] 
**fare_basis_code** | **String** | The airline fare basis code. | [optional] 
**departure_tax** | **Float** | Fee charged by a country when a person leaves the country. | [optional] 
**flight_number** | **String** | The airline flight number associated with the ticket. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AirlineTravelRoute.new(departure_date: null,
                                 origin: MIA,
                                 destination: ATL,
                                 carrier_code: DL,
                                 service_class: J,
                                 stopover_type: DIRECT,
                                 fare_basis_code: F,
                                 departure_tax: 75,
                                 flight_number: 765599)
```


