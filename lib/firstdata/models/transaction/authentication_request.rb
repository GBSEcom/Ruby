module FirstData
	class AuthenticationRequest
		include ModelUtils

		ATTR = [
			:type
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
