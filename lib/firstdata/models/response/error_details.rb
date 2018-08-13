module FirstData
	class ErrorDetails
		include ModelUtils

		ATTR = [
			:field,
			:message
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end