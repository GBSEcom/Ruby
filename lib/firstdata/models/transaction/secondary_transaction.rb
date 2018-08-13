module FirstData
	class SecondaryTransaction
		include ModelUtils

		ATTR = [
			:store_id
		]

		OBJ_ATTR = {
			amount: Amount,
			split_shipment: SplitShipment
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
