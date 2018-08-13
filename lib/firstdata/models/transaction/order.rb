module FirstData
	class Order
		include ModelUtils

		ATTR = [
			:order_id
		]

		OBJ_ATTR = {
			billing: Billing,
			shipping: Shipping
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
