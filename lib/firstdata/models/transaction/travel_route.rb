module FirstData
	class TravelRoute
		include ModelUtils

		ATTR = [
			:departure_date,
			:origin,
			:destination,
			:carrier_code,
			:service_class,
			:stopover_type,
			:fare_basis_code,
			:departure_tax,
			:flight_number
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
