=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'cgi'

module OpenapiClient
  class PaymentApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update a 3DSecure or UnionPay payment and continue processing.
    # Use this to handle a 3DSecure redirect response or UnionPay authentication, updating the transaction and continuing processing.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param authentication_update_request [AuthenticationUpdateRequest] Accepted request types: Secure3DAuthenticationUpdateRequest, Secure3D10AuthenticationUpdateRequest, Secure3D21AuthenticationUpdateRequest and UnionPayAuthenticationUpdateRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [TransactionResponse]
    def finalize_secure_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_update_request, opts = {})
      data, _status_code, _headers = finalize_secure_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_update_request, opts)
      data
    end

    # Update a 3DSecure or UnionPay payment and continue processing.
    # Use this to handle a 3DSecure redirect response or UnionPay authentication, updating the transaction and continuing processing.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param authentication_update_request [AuthenticationUpdateRequest] Accepted request types: Secure3DAuthenticationUpdateRequest, Secure3D10AuthenticationUpdateRequest, Secure3D21AuthenticationUpdateRequest and UnionPayAuthenticationUpdateRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(TransactionResponse, Integer, Hash)>] TransactionResponse data, response status code and response headers
    def finalize_secure_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, authentication_update_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.finalize_secure_transaction ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentApi.finalize_secure_transaction"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentApi.finalize_secure_transaction"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentApi.finalize_secure_transaction"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentApi.finalize_secure_transaction"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.finalize_secure_transaction"
      end
      # verify the required parameter 'authentication_update_request' is set
      if @api_client.config.client_side_validation && authentication_update_request.nil?
        fail ArgumentError, "Missing the required parameter 'authentication_update_request' when calling PaymentApi.finalize_secure_transaction"
      end
      # resource path
      local_var_path = '/payments/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      # header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      # header_params[:'Content-Type'] = content_type
      header_params[:'Client-Request-Id'] = client_request_id
      header_params[:'Api-Key'] = api_key
      header_params[:'Timestamp'] = timestamp
      header_params[:'Message-Signature'] = opts[:'message_signature'] if !opts[:'message_signature'].nil?
      header_params[:'Region'] = opts[:'region'] if !opts[:'region'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(authentication_update_request) 

      # return_type
      return_type = opts[:return_type] || 'TransactionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#finalize_secure_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Generate a primary transaction.
    # Use this to originate a financial transaction like a sale, preauthorization, or credit.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param primary_transaction [PrimaryTransaction] Accepted request types: AliPaySaleTransaction, ChinaPnRSaleTransaction, PaymentCardCreditTransaction, PaymentCardForcedTicketTransaction, PaymentCardSaleTransaction, PaymentCardPreAuthTransaction, PaymentCardPayerAuthTransaction, PaymentCardDisbursementTransaction, PaymentTokenCreditTransaction, PaymentTokenPreAuthTransaction, PaymentTokenSaleTransaction, PaymentTokenDisbursementTransaction, PaypalCreditTransaction, SepaSaleTransaction, SepaCreditTransaction, WalletSaleTransaction, and WalletPreAuthTransaction, PaymentDeviceSaleTransaction, PaymentDevicePreAuthTransaction, PaymentDeviceCreditTransaction, PaymentDeviceDisbursementTransaction, AchPreAuthTransaction, AchSaleTransaction, AchCreditTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [TransactionResponse]
    def submit_primary_transaction(content_type, client_request_id, api_key, timestamp, primary_transaction, opts = {})
      data, _status_code, _headers = submit_primary_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, primary_transaction, opts)
      data
    end

    # Generate a primary transaction.
    # Use this to originate a financial transaction like a sale, preauthorization, or credit.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param primary_transaction [PrimaryTransaction] Accepted request types: AliPaySaleTransaction, ChinaPnRSaleTransaction, PaymentCardCreditTransaction, PaymentCardForcedTicketTransaction, PaymentCardSaleTransaction, PaymentCardPreAuthTransaction, PaymentCardPayerAuthTransaction, PaymentCardDisbursementTransaction, PaymentTokenCreditTransaction, PaymentTokenPreAuthTransaction, PaymentTokenSaleTransaction, PaymentTokenDisbursementTransaction, PaypalCreditTransaction, SepaSaleTransaction, SepaCreditTransaction, WalletSaleTransaction, and WalletPreAuthTransaction, PaymentDeviceSaleTransaction, PaymentDevicePreAuthTransaction, PaymentDeviceCreditTransaction, PaymentDeviceDisbursementTransaction, AchPreAuthTransaction, AchSaleTransaction, AchCreditTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(TransactionResponse, Integer, Hash)>] TransactionResponse data, response status code and response headers
    def submit_primary_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, primary_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.submit_primary_transaction ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentApi.submit_primary_transaction"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentApi.submit_primary_transaction"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentApi.submit_primary_transaction"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentApi.submit_primary_transaction"
      end
      # verify the required parameter 'primary_transaction' is set
      if @api_client.config.client_side_validation && primary_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'primary_transaction' when calling PaymentApi.submit_primary_transaction"
      end
      # resource path
      local_var_path = '/payments'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      # header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      # header_params[:'Content-Type'] = content_type
      header_params[:'Client-Request-Id'] = client_request_id
      header_params[:'Api-Key'] = api_key
      header_params[:'Timestamp'] = timestamp
      header_params[:'Message-Signature'] = opts[:'message_signature'] if !opts[:'message_signature'].nil?
      header_params[:'Region'] = opts[:'region'] if !opts[:'region'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(primary_transaction) 

      # return_type
      return_type = opts[:return_type] || 'TransactionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#submit_primary_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a secondary transaction.
    # Use this to perform a void, postAuth or return secondary transaction. Partial postAuths and returns are allowed.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param secondary_transaction [SecondaryTransaction] Accepted request types: PostAuthTransaction, VoidTransaction, VoidPreAuthTransactions, ReturnTransaction, AchPostAuthTransaction, AchVoidTransaction, AchReturnTransaction and PreAuthSecondaryTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [TransactionResponse]
    def submit_secondary_transaction(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts = {})
      data, _status_code, _headers = submit_secondary_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts)
      data
    end

    # Perform a secondary transaction.
    # Use this to perform a void, postAuth or return secondary transaction. Partial postAuths and returns are allowed.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param secondary_transaction [SecondaryTransaction] Accepted request types: PostAuthTransaction, VoidTransaction, VoidPreAuthTransactions, ReturnTransaction, AchPostAuthTransaction, AchVoidTransaction, AchReturnTransaction and PreAuthSecondaryTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [Array<(TransactionResponse, Integer, Hash)>] TransactionResponse data, response status code and response headers
    def submit_secondary_transaction_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, secondary_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.submit_secondary_transaction ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentApi.submit_secondary_transaction"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentApi.submit_secondary_transaction"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentApi.submit_secondary_transaction"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentApi.submit_secondary_transaction"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.submit_secondary_transaction"
      end
      # verify the required parameter 'secondary_transaction' is set
      if @api_client.config.client_side_validation && secondary_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'secondary_transaction' when calling PaymentApi.submit_secondary_transaction"
      end
      # resource path
      local_var_path = '/payments/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'storeId'] = opts[:'store_id'] if !opts[:'store_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      # header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      # header_params[:'Content-Type'] = content_type
      header_params[:'Client-Request-Id'] = client_request_id
      header_params[:'Api-Key'] = api_key
      header_params[:'Timestamp'] = timestamp
      header_params[:'Message-Signature'] = opts[:'message_signature'] if !opts[:'message_signature'].nil?
      header_params[:'Region'] = opts[:'region'] if !opts[:'region'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(secondary_transaction) 

      # return_type
      return_type = opts[:return_type] || 'TransactionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#submit_secondary_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the state of a transaction.
    # Use this query to get the current state of an existing transaction.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [TransactionResponse]
    def transaction_inquiry(content_type, client_request_id, api_key, timestamp, transaction_id, opts = {})
      data, _status_code, _headers = transaction_inquiry_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, opts)
      data
    end

    # Retrieve the state of a transaction.
    # Use this query to get the current state of an existing transaction.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param transaction_id [String] Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [Array<(TransactionResponse, Integer, Hash)>] TransactionResponse data, response status code and response headers
    def transaction_inquiry_with_http_info(content_type, client_request_id, api_key, timestamp, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentApi.transaction_inquiry ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentApi.transaction_inquiry"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentApi.transaction_inquiry"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentApi.transaction_inquiry"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentApi.transaction_inquiry"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling PaymentApi.transaction_inquiry"
      end
      # resource path
      local_var_path = '/payments/{transaction-id}'.sub('{' + 'transaction-id' + '}', CGI.escape(transaction_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'storeId'] = opts[:'store_id'] if !opts[:'store_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # header_params[:'Content-Type'] = content_type
      header_params[:'Client-Request-Id'] = client_request_id
      header_params[:'Api-Key'] = api_key
      header_params[:'Timestamp'] = timestamp
      header_params[:'Message-Signature'] = opts[:'message_signature'] if !opts[:'message_signature'].nil?
      header_params[:'Region'] = opts[:'region'] if !opts[:'region'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TransactionResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentApi#transaction_inquiry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
