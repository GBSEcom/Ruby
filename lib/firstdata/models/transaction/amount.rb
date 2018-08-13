module FirstData
	class Amount
		include ModelUtils
		
		ATTR = [
			:total,
			:currency
		]

		OBJ_ATTR = {
			components: AmountComponents
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
			raise ArgumentError.new("Currency designator must be ISO 4217 standard") if !valid_currency?(currency)
		end

		def valid_currency?(currency)
			FirstData::Currencies::CODES.include?(currency.upcase)
		end
	end
end
