module FirstData
	class AdditionalDetails
		include ModelUtils

		ATTR = [
			:reference_number,
			:comments,
			:dynamic_merchant_name,
			:invoice_number,
			:purchase_order_number,
			:recurring_type
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
