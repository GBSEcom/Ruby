module FirstData
	class AncillaryServiceCategory
		include ModelUtils

		ATTR = [
			:service_category
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
