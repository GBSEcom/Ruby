module FirstData
	class Airline
		include ModelUtils

		ATTR = [
			:passenger_name,
			:ticket_number,
			:issuing_carrier,
			:carrier_name,
			:travel_agency_iata_code,
			:travel_agency_name,
			:airline_plan_number,
			:airline_invoice_number,
			:reservation_system,
			:restricted,
			:travel_route,
			:related_ticket_number,
			:ancillary_service_category,
			:ticket_purchase
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('travel_route', TravelRoute)
			set_list_items('ancillary_service_category', AncillaryServiceCategory)
		end
	end
end
