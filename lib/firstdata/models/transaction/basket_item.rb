module FirstData
	class BasketItem
		include ModelUtils

		ATTR = [
			:id,
			:description,
			:count
		]

		OBJ_ATTR = {
			unit_price: Amount,
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
