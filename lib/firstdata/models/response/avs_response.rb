module FirstData
	class AvsResponse
		include ModelUtils

		ATTR = [
			:street_number_match,
			:postal_code_match
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end