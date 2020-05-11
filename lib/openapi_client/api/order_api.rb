=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.10.1.20200226.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'cgi'

module OpenapiClient
  class OrderApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve the state of an order.
    # Use this query to get the current state of an existing order.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param order_id [String] Gateway order identifier as returned in the parameter orderId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [OrderResponse]
    def order_inquiry(content_type, client_request_id, api_key, timestamp, order_id, opts = {})
      data, _status_code, _headers = order_inquiry_with_http_info(content_type, client_request_id, api_key, timestamp, order_id, opts)
      data
    end

    # Retrieve the state of an order.
    # Use this query to get the current state of an existing order.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param order_id [String] Gateway order identifier as returned in the parameter orderId.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @return [Array<(OrderResponse, Integer, Hash)>] OrderResponse data, response status code and response headers
    def order_inquiry_with_http_info(content_type, client_request_id, api_key, timestamp, order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.order_inquiry ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling OrderApi.order_inquiry"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling OrderApi.order_inquiry"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling OrderApi.order_inquiry"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling OrderApi.order_inquiry"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.order_inquiry"
      end
      # resource path
      local_var_path = '/orders/{order-id}'.sub('{' + 'order-id' + '}', CGI.escape(order_id.to_s))

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
      return_type = opts[:return_type] || 'OrderResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderResponse',
        :default_error_type => 'ErrorResponse')

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#order_inquiry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform return or postAuth secondary transactions.
    # Use this to perform a postAuth or return secondary transaction using order ID. Partial postAuths and returns are allowed.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param order_id [String] Gateway order identifier as returned in the parameter orderId.
    # @param secondary_transaction [SecondaryTransaction] Accepted request types: PostAuthTransaction, VoidTransaction, and ReturnTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [TransactionResponse]
    def submit_secondary_transaction_from_order(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts = {})
      data, _status_code, _headers = submit_secondary_transaction_from_order_with_http_info(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts)
      data
    end

    # Perform return or postAuth secondary transactions.
    # Use this to perform a postAuth or return secondary transaction using order ID. Partial postAuths and returns are allowed.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param order_id [String] Gateway order identifier as returned in the parameter orderId.
    # @param secondary_transaction [SecondaryTransaction] Accepted request types: PostAuthTransaction, VoidTransaction, and ReturnTransaction.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(TransactionResponse, Integer, Hash)>] TransactionResponse data, response status code and response headers
    def submit_secondary_transaction_from_order_with_http_info(content_type, client_request_id, api_key, timestamp, order_id, secondary_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OrderApi.submit_secondary_transaction_from_order ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # verify the required parameter 'order_id' is set
      if @api_client.config.client_side_validation && order_id.nil?
        fail ArgumentError, "Missing the required parameter 'order_id' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # verify the required parameter 'secondary_transaction' is set
      if @api_client.config.client_side_validation && secondary_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'secondary_transaction' when calling OrderApi.submit_secondary_transaction_from_order"
      end
      # resource path
      local_var_path = '/orders/{order-id}'.sub('{' + 'order-id' + '}', CGI.escape(order_id.to_s))

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
        :return_type => 'TransactionResponse',
        :default_error_type => 'ErrorResponse',
        :error_type => 'TransactionErrorResponse')

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrderApi#submit_secondary_transaction_from_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
