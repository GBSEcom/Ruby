module FirstData
	class AuthenticationResponseVerification
		include ModelUtils

		ATTR = [
			:type,
			:MD,
			:PaRes
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
