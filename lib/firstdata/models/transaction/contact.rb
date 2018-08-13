module FirstData
	class Contact
		include ModelUtils

		ATTR = [
			:phone,
			:mobile_phone,
			:fax,
			:email
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
