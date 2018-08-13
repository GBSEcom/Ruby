module FirstData
	class PaymentCard
		include ModelUtils

		ATTR = [
			:number,
			:security_code,
			:card_function,
			:cardholder_name,
			:brand,
			:wallet_provider_id,
			:enable_tokenization
		]

		OBJ_ATTR = {
			expiry_date: Expiration,
			authentication_request: AuthenticationRequest,
			authentication_result: AuthenticationResult
		}

		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			format_expiration(params) if params[:expiry_date]
			set_attributes(params)
		end

		def format_expiration(params)
			params[:expiry_date] = Expiration.new(expiry_date: params[:expiry_date]) if params[:expiry_date].is_a?(String) or params[:expiry_date].is_a?(Fixnum)
		end
	end
end

