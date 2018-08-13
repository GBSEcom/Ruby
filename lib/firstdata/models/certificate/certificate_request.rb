module FirstData
	class CertificateRequest
		include ModelUtils

		ATTR = [
			:app_label,
			:wallet_provider,
			:permissions
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
