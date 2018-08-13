module FirstData
	class AmountComponents
		include ModelUtils

		ATTR = [
			:subtotal,
			:vat_amount,
			:local_tax,
			:shipping,
			:cashback,
			:tip,
			:convenience_fee
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
