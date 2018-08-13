module FirstData
	class SepaMandate
		include ModelUtils

		ATTR = [
			:reference,
			:url,
			:signature_date,
			:type
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
