module FirstData
	class AuthResultApplePay
		include ModelUtils

		ATTR = [
			:online_payment_cryptogram,
			:eci_indicator
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
