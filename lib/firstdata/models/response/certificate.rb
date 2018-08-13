module FirstData
	class Certificate
		include ModelUtils

		ATTR = [
			:certificate,
			:app_label,
			:wallet_provider,
			:status
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end