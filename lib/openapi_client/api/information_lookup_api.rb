=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'cgi'

module OpenapiClient
  class InformationLookupApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Card information lookup.
    # Use this to look up card related information such as issuer country, card function and card brand.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param card_info_lookup_request [CardInfoLookupRequest] Accepted request type: CardInfoLookupRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [CardInfoLookupResponse]
    def card_info_lookup(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts = {})
      data, _status_code, _headers = card_info_lookup_with_http_info(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts)
      data
    end

    # Card information lookup.
    # Use this to look up card related information such as issuer country, card function and card brand.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param card_info_lookup_request [CardInfoLookupRequest] Accepted request type: CardInfoLookupRequest.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(CardInfoLookupResponse, Integer, Hash)>] CardInfoLookupResponse data, response status code and response headers
    def card_info_lookup_with_http_info(content_type, client_request_id, api_key, timestamp, card_info_lookup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InformationLookupApi.card_info_lookup ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling InformationLookupApi.card_info_lookup"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling InformationLookupApi.card_info_lookup"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling InformationLookupApi.card_info_lookup"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling InformationLookupApi.card_info_lookup"
      end
      # verify the required parameter 'card_info_lookup_request' is set
      if @api_client.config.client_side_validation && card_info_lookup_request.nil?
        fail ArgumentError, "Missing the required parameter 'card_info_lookup_request' when calling InformationLookupApi.card_info_lookup"
      end
      # resource path
      local_var_path = '/card-information'

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
      post_body = opts[:body] || @api_client.object_to_http_body(card_info_lookup_request) 

      # return_type
      return_type = opts[:return_type] || 'CardInfoLookupResponse' 

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
        @api_client.config.logger.debug "API called: InformationLookupApi#card_info_lookup\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Account information lookup.
    # Use this to look up card related information associated with a payment card or payment token.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param account_info_lookup_request [AccountInfoLookupRequest] Accepted request type: PaymentCardInfoLookupRequest and PaymentTokenInfoLookupRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [CardInfoLookupResponse]
    def lookup_account(content_type, client_request_id, api_key, timestamp, account_info_lookup_request, opts = {})
      data, _status_code, _headers = lookup_account_with_http_info(content_type, client_request_id, api_key, timestamp, account_info_lookup_request, opts)
      data
    end

    # Account information lookup.
    # Use this to look up card related information associated with a payment card or payment token.
    # @param content_type [String] Content type.
    # @param client_request_id [String] A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
    # @param api_key [String] Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
    # @param timestamp [Integer] Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
    # @param account_info_lookup_request [AccountInfoLookupRequest] Accepted request type: PaymentCardInfoLookupRequest and PaymentTokenInfoLookupRequest
    # @param [Hash] opts the optional parameters
    # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
    # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
    # @return [Array<(CardInfoLookupResponse, Integer, Hash)>] CardInfoLookupResponse data, response status code and response headers
    def lookup_account_with_http_info(content_type, client_request_id, api_key, timestamp, account_info_lookup_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: InformationLookupApi.lookup_account ...'
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling InformationLookupApi.lookup_account"
      end
      # verify enum value
      allowable_values = ["application/json"]
      if @api_client.config.client_side_validation && !allowable_values.include?(content_type)
        fail ArgumentError, "invalid value for \"content_type\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'client_request_id' is set
      if @api_client.config.client_side_validation && client_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_request_id' when calling InformationLookupApi.lookup_account"
      end
      # verify the required parameter 'api_key' is set
      if @api_client.config.client_side_validation && api_key.nil?
        fail ArgumentError, "Missing the required parameter 'api_key' when calling InformationLookupApi.lookup_account"
      end
      # verify the required parameter 'timestamp' is set
      if @api_client.config.client_side_validation && timestamp.nil?
        fail ArgumentError, "Missing the required parameter 'timestamp' when calling InformationLookupApi.lookup_account"
      end
      # verify the required parameter 'account_info_lookup_request' is set
      if @api_client.config.client_side_validation && account_info_lookup_request.nil?
        fail ArgumentError, "Missing the required parameter 'account_info_lookup_request' when calling InformationLookupApi.lookup_account"
      end
      # resource path
      local_var_path = '/account-information'

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
      post_body = opts[:body] || @api_client.object_to_http_body(account_info_lookup_request) 

      # return_type
      return_type = opts[:return_type] || 'CardInfoLookupResponse' 

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
        @api_client.config.logger.debug "API called: InformationLookupApi#lookup_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
