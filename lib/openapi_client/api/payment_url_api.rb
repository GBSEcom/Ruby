=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.14.0.20201015.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'cgi'

module OpenapiClient
  class PaymentURLApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a payment URL.
    # Use this to generate an embedding payment link.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param payment_url_request [PaymentUrlRequest] Accepted request type: PaymentUrlRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [PaymentUrlResponse]
    def create_payment_url(content_type, client_request_id, api_key, timestamp, payment_url_request, opts = {})
      data, _status_code, _headers = create_payment_url_with_http_info(content_type, client_request_id, api_key, timestamp, payment_url_request, opts)
      data
    end

    # Create a payment URL.
    # Use this to generate an embedding payment link.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param payment_url_request [PaymentUrlRequest] Accepted request type: PaymentUrlRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(PaymentUrlResponse, Integer, Hash)>] PaymentUrlResponse data, response status code and response headers
    def create_payment_url_with_http_info(content_type, client_request_id, api_key, timestamp, payment_url_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentURLApi.create_payment_url ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentURLApi.create_payment_url"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentURLApi.create_payment_url"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentURLApi.create_payment_url"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentURLApi.create_payment_url"
      end
      # verify the required parameter 'payment_url_request' is set
      if @api_client.config.client_side_validation && payment_url_request.nil?
        fail ArgumentError, "Missing the required parameter 'payment_url_request' when calling PaymentURLApi.create_payment_url"
      end
      # resource path
      local_var_path = '/payment-url'

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
      post_body = opts[:body] || @api_client.object_to_http_body(payment_url_request) 

      # return_type
      return_type = opts[:return_type] || 'PaymentUrlResponse' 

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
        @api_client.config.logger.debug "API called: PaymentURLApi#create_payment_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a payment URL.
    # Use this to delete an embedding payment link.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @option opts [String] :transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
    # @option opts [String] :payment_url_id The ID code from the payment URL.
    # @option opts [String] :transaction_time The transaction time in seconds since epoch.
    # @return [PaymentUrlResponse]
    def delete_payment_url(content_type, client_request_id, api_key, timestamp, opts = {})
      data, _status_code, _headers = delete_payment_url_with_http_info(content_type, client_request_id, api_key, timestamp, opts)
      data
    end

    # Delete a payment URL.
    # Use this to delete an embedding payment link.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @option opts [String] :transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId or merchantTransactionId.
    # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
    # @option opts [String] :payment_url_id The ID code from the payment URL.
    # @option opts [String] :transaction_time The transaction time in seconds since epoch.
    # @return [Array<(PaymentUrlResponse, Integer, Hash)>] PaymentUrlResponse data, response status code and response headers
    def delete_payment_url_with_http_info(content_type, client_request_id, api_key, timestamp, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentURLApi.delete_payment_url ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentURLApi.delete_payment_url"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentURLApi.delete_payment_url"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentURLApi.delete_payment_url"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentURLApi.delete_payment_url"
      end
      # resource path
      local_var_path = '/payment-url'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'storeId'] = opts[:'store_id'] if !opts[:'store_id'].nil?
      query_params[:'transactionId'] = opts[:'transaction_id'] if !opts[:'transaction_id'].nil?
      query_params[:'orderId'] = opts[:'order_id'] if !opts[:'order_id'].nil?
      query_params[:'paymentUrlId'] = opts[:'payment_url_id'] if !opts[:'payment_url_id'].nil?
      query_params[:'transactionTime'] = opts[:'transaction_time'] if !opts[:'transaction_time'].nil?

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
      return_type = opts[:return_type] || 'PaymentUrlResponse' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PaymentURLApi#delete_payment_url\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve the state of payment URL.
    # Use this query to get the current state of an existing paymentURL.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param from_date [String] The start date for payment URL in seconds since epoch.
    # @param to_date [String] The end date for payment URL search query in seconds since epoch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
    # @option opts [String] :merchant_transaction_id Gateway merchant identifier as returned in the parameter merchantTransactionId.
    # @option opts [String] :status The status of payment URL.
    # @return [PaymentUrlDetailResponse]
    def payment_url_detail(content_type, client_request_id, api_key, timestamp, from_date, to_date, opts = {})
      data, _status_code, _headers = payment_url_detail_with_http_info(content_type, client_request_id, api_key, timestamp, from_date, to_date, opts)
      data
    end

    # Retrieve the state of payment URL.
    # Use this query to get the current state of an existing paymentURL.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param from_date [String] The start date for payment URL in seconds since epoch.
    # @param to_date [String] The end date for payment URL search query in seconds since epoch.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
    # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
    # @option opts [String] :merchant_transaction_id Gateway merchant identifier as returned in the parameter merchantTransactionId.
    # @option opts [String] :status The status of payment URL.
    # @return [Array<(PaymentUrlDetailResponse, Integer, Hash)>] PaymentUrlDetailResponse data, response status code and response headers
    def payment_url_detail_with_http_info(content_type, client_request_id, api_key, timestamp, from_date, to_date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PaymentURLApi.payment_url_detail ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling PaymentURLApi.payment_url_detail"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling PaymentURLApi.payment_url_detail"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling PaymentURLApi.payment_url_detail"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling PaymentURLApi.payment_url_detail"
      end
      # verify the required parameter 'from_date' is set
      if @api_client.config.client_side_validation && from_date.nil?
        fail ArgumentError, "Missing the required parameter 'from_date' when calling PaymentURLApi.payment_url_detail"
      end
      # verify the required parameter 'to_date' is set
      if @api_client.config.client_side_validation && to_date.nil?
        fail ArgumentError, "Missing the required parameter 'to_date' when calling PaymentURLApi.payment_url_detail"
      end
      # resource path
      local_var_path = '/payment-url'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromDate'] = from_date
      query_params[:'toDate'] = to_date
      query_params[:'storeId'] = opts[:'store_id'] if !opts[:'store_id'].nil?
      query_params[:'orderId'] = opts[:'order_id'] if !opts[:'order_id'].nil?
      query_params[:'merchantTransactionId'] = opts[:'merchant_transaction_id'] if !opts[:'merchant_transaction_id'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?

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
      return_type = opts[:return_type] || 'PaymentUrlDetailResponse' 

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
        @api_client.config.logger.debug "API called: PaymentURLApi#payment_url_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
