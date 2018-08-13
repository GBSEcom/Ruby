module FirstData
	class ApplePay
		include ModelUtils

		ATTR = [
			:data,
			:signature,
			:version,
			:app_id
		]
		
		OBJ_ATTR = {
			header: ApplePayHeader
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end
