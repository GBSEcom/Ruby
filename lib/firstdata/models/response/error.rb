module FirstData
	class ResponseError
		include ModelUtils

		ATTR = [
			:code,
			:message,
			:details
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('details', ErrorDetails)
		end
	end
end
