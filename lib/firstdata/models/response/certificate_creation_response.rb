module FirstData
	class CertificateCreationResponse
		include ModelUtils
		
		ATTR = [
			:client_request_id,
			:api_trace_id,
			:certificate
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
