module FirstData
	class AuthenticationResult
		include ModelUtils

		OBJ_ATTR = {
			apple_pay: AuthResultApplePay,
			secure_3d: AuthResultSecure3d
		}

		attr_reader *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
