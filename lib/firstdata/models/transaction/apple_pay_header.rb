module FirstData
	class ApplePayHeader
		include ModelUtils

		ATTR = [
			:application_data_hash,
			:ephemeral_public_key,
			:public_key_hash,
			:transaction_id
		]

		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
