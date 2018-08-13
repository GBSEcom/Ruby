module FirstData
	class CertificateInquiryResponse
		include ModelUtils

		ATTR = [
			:client_request_id,
			:api_trace_id,
			:certificates
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
			set_list_items('certificates', Certificate)
		end
	end
end
