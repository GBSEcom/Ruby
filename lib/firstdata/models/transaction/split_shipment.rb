module FirstData
	class SplitShipment
		include ModelUtils

		ATTR = [
			:total_count,
			:final_shipment
		]

		attr_reader *ATTR
		
		def initialize(params)
			set_attributes(params)
		end
	end
end
