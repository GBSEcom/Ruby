module FirstData
	class CarRental
		include ModelUtils

		ATTR = [
			:agreement_number,
			:renter_name,
			:return_city,
			:return_date,
			:pickup_date,
			:rental_class_id,
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
