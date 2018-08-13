module FirstData
	class TransactionResponse
		include ModelUtils

		ATTR = [
			:client_request_id,
			:api_trace_id,
			:ipg_transaction_id,
			:order_id,
			:transaction_type,
			:authorization_code,
			:security_code_response,
			:brand,
			:country,
			:terminal_id,
			:client_transaction_id,
			:transaction_time,
			:transaction_status
		]
		
		OBJ_ATTR = {
			avs_response: AvsResponse,
			approved_amount: Amount,
			authentication_redirect: AuthenticationRedirect,
			error: ResponseError
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end

		def is_successful?
			@transaction_status == "APPROVED"
		end
	end
end
