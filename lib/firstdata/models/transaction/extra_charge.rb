module FirstData
	class ExtraCharge
		include ModelUtils

		ATTR = [
			:charge_item
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
