module FirstData
	class Lodging
		include ModelUtils

		ATTR = [
			:arrival_date,
			:departure_date,
			:folio_number,
			:extra_charges,
			:no_show_indicator
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('extra_charges', ExtraCharge)
		end
	end
end
