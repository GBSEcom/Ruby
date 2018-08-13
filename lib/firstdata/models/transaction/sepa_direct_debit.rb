module FirstData
	class SepaDirectDebit
		include ModelUtils

		ATTR = [
			:iban,
			:name,
			:country,
			:email
		]

		OBJ_ATTR = {
			mandate: SepaMandate
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
