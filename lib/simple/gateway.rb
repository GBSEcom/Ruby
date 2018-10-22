require "json"

module SimpleClient
	class Gateway

		CONTENT_TYPE = "application/json"

		def self.create(credentials)
			return self.new(ClientContext.new(credentials))
		end

		def initialize(context)
			@context = context
			@authentication_api = SwaggerClient::AuthenticationApi.new(@context.client)
			@order_api = SwaggerClient::OrderApi.new(@context.client)
			@payment_api = SwaggerClient::PaymentApi.new(@context.client)
		end

		def request_access_token
			signature_service = get_signature_service
			message_signature = signature_service.sign
			return @authentication_api.v1_authentication_access_tokens_post(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature
			)
		end

		def primary_payment_transaction(payload)
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @payment_api.primary_payment_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				payload
			)
		end

		def return_transaction(transaction_id, payload, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @payment_api.return_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				transaction_id,
				payload,
				opts
			)
		end

		def transaction_inquiry(transaction_id, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign
			return @payment_api.transaction_inquiry(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				transaction_id,
				opts
			)
		end

		def void_transaction(transaction_id, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign
			return @payment_api.void_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				transaction_id,
				opts
			)
		end

		def perform_payment_post_authorization_by_order(order_id, payload, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @order_api.perform_payment_post_authorisation(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature, 
				order_id,
				payload,
				opts
			)
		end

		def perform_payment_authorization_by_transaction(transaction_id, payload, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @payment_api.perform_payment_post_authorisation(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				transaction_id,
				payload,
				opts
			)
		end

		def return_transaction_by_order(order_id, payload, store_id=nil)
			opts = {store_id: store_id}
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @order_api.return_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				message_signature,
				order_id,
				payload,
				opts
			)
		end

		private

		def get_signature_service
			return Signature.new(
				api_key: get_api_key,
				api_secret: get_api_secret
			)
		end

		def get_api_key
			@context.credentials.api_key
		end

		def get_api_secret
			@context.credentials.api_secret
		end
	end
end