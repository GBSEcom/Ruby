require "json"

module SimpleClient
	class Gateway

		CONTENT_TYPE = "application/json"

		def self.create(credentials, environment="CERT")
			return self.new(ClientContext.new(credentials, environment))
		end

		def initialize(context)
			@context = context
			@authentication_api = OpenapiClient::AuthenticationApi.new(@context.client)
			@card_info_api = OpenapiClient::CardInfoLookupApi.new(@context.client)
			@card_verification_api = OpenapiClient::CardVerificationApi.new(@context.client)
			@currency_conversion_api = OpenapiClient::CurrencyConversionApi.new(@context.client)
			@fraud_detect_api = OpenapiClient::FraudDetectApi.new(@context.client)
			@order_api = OpenapiClient::OrderApi.new(@context.client)
			@payment_api = OpenapiClient::PaymentApi.new(@context.client)
			@payment_schedules_api = OpenapiClient::PaymentSchedulesApi.new(@context.client)
			@payment_token_api = OpenapiClient::PaymentTokenApi.new(@context.client)
			@payment_url_api = OpenapiClient::PaymentURLApi.new(@context.client)
		end

		# Authentication API
		def request_access_token(payload:)
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			return @authentication_api.authentication_access_tokens_post(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				{message_signature: message_signature}
			)
		end

		# Payment API
		def primary_payment_transaction(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload)
			return @payment_api.submit_primary_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)
		end

		def secondary_payment_transaction(transaction_id:, payload:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload)
			return @payment_api.submit_secondary_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				transaction_id,
				payload,
				opts
			)
		end

		def transaction_inquiry(transaction_id:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign
			return @payment_api.transaction_inquiry(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				transaction_id,
				opts
			)
		end

		def finalize_secure_transaction(transaction_id:, payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload)
			return @payment_api.finalize_secure_transaction(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				transaction_id,
				payload,
				opts
				)
		end

		# Order API
		def order_inquiry(order_id:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			message_signature = signature_service.sign 
			opts[:message_signature] = message_signature
			return @order_api.order_inquiry(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				order_id,
				opts
			)
		end

		def secondary_payment_transaction_by_order(order_id:, payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload)
			return @order_api.submit_secondary_transaction_from_order(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				order_id,
				payload,
				opts
			)
		end

		# Card Verification API
		def verify_card(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @card_verification_api.verify_card(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)			
		end

		# Currency Conversaion API
		def get_exchange_rate(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @currency_conversion_api.get_exchange_rate(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	
		end

		# Fraud Detect API
		def get_transaction_fraud_score(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @fraud_detect_api.score_only(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	
		end

		def fraud_client_registration_post(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @fraud_detect_api.fraud_client_registration_post(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	

		end

		def fraud_payment_registration_post(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @fraud_detect_api.fraud_payment_registration_post(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	

		end

		# Payment Schedules API
		def cancel_payment_schedule(order_id:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign 
			return @payment_schedules_api.cancel_payment_schedule(
				CONTENT_TYPE,
				signature_service.client_request_id,
				get_api_key,
				signature_service.timestamp,
				order_id,
				opts
			)
		end
		
		def create_payment_schedule(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload) 
			return @payment_schedules_api.create_payment_schedule(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	
		end		

		def payment_schedule_inquiry(order_id:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign
			return @payment_schedules_api.inquiry_payment_schedule(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				order_id,
				opts
			)	
		end		

		def update_payment_schedule(order_id:, payload:, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign(payload)
			return @payment_schedules_api.update_payment_schedule(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				order_id,
				payload,
				opts
			)	
		end		
		

		# Payment Token API
		def create_payment_token(payload:, authorization: nil, region: nil)
			opts = {}
			opts[:region] = region if region
			opts[:authorization] = authorization if authorization
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			opts [:message_signature] = message_signature
			return @payment_token_api.create_payment_token(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	
		end

		def payment_token_inquiry(token_id:, authorization: nil, store_id: nil, region: nil)
			opts = {}
			opts[:store_id] = store_id if store_id
			opts[:authorization] = authorization if authorization
			opts[:region] = region if region
			signature_service = get_signature_service
			opts[:message_signature] = signature_service.sign
			return @payment_token_api.get_payment_token_details(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				token_id,
				opts
			)	
		end		

		def delete_payment_token(token_id:, authorization: nil, store_id: nil, region: nil)
			opts = {}
			opts[:region] = region if region
			opts[:store_id] = store_id if store_id
			opts[:authorization] = authorization if authorization
			signature_service = get_signature_service
			message_signature = signature_service.sign
			opts [:message_signature] = message_signature
			return @payment_token_api.delete_payment_token(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				token_id,
				opts
			)	
		end


		# Payment URL API
		def create_payment_url(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			opts[:message_signature] = message_signature
			return @payment_url_api.create_payment_url(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				payload,
				opts
			)	
		end

		def delete_payment_url(region: nil, store_id: nil, transaction_id: nil, order_id: nil, payment_url_id: nil, transaction_time: nil)
			opts = {}
			opts[:region] = region if region
			opts[:store_id] = store_id if store_id
			opts[:transaction_id] = transaction_id if transaction_id
			opts[:order_id] = order_id if order_id
			opts[:payment_url_id] = payment_url_id if payment_url_id
			opts[:transaction_time] = transaction_time if transaction_time
			signature_service = get_signature_service
			message_signature = signature_service.sign()
			opts[:message_signature] = message_signature
			return @payment_url_api.delete_payment_url(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
				opts
			)	
		end

		def payment_url_detail(from_date:, to_date:, region: nil, store_id: nil, transaction_id: nil, order_id: nil, status: nil)
			opts = {}
			opts[:region] = region if region
			opts[:store_id] = store_id if store_id
			opts[:merchant_transaction_id] = transaction_id if transaction_id
			opts[:order_id] = order_id if order_id
			opts[:status] = status if status
			signature_service = get_signature_service
			message_signature = signature_service.sign()
			opts[:message_signature] = message_signature
			return @payment_url_api.payment_url_detail(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp,
				from_date,
				to_date,
				opts
			)	
		end


		# Card Info API
		def card_info_lookup(payload:, region: nil)
			opts = {}
			opts[:region] = region if region
			signature_service = get_signature_service
			message_signature = signature_service.sign(payload)
			opts[:message_signature] = message_signature
			return @card_info_api.card_info_lookup(
				CONTENT_TYPE, 
				signature_service.client_request_id, 
				get_api_key, 
				signature_service.timestamp, 
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