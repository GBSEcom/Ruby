module FirstData
	class AuthResultSecure3d
		include ModelUtils

		ATTR = [
			:type,
			:verification_response,
			:payerAuthentication_response,
			:authentication_value,
			:xid
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
