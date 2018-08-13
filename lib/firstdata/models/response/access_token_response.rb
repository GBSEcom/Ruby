module FirstData
	class AccessTokenResponse
		include ModelUtils

		ATTR = [
			:access_token,
			:client_request_id,
			:api_trace_id,
			:transaction_status
		]

		OBJ_ATTR = {
			error: ResponseError
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end

		def valid_token?
			true
		end
	end
end
