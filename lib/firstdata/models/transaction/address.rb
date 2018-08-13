module FirstData
	class Address
		include ModelUtils
		
		ATTR = [
			:company,
			:address1,
			:address2,
			:locality,
			:region,
			:postal_code,
			:country
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
