module FirstData
	class CardVerificationsTransaction
		include ModelUtils

		ATTR = [
			:store_id
		]

		OBJ_ATTR = {
			payment_method: PaymentMethod
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
