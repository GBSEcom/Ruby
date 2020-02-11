=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.9.1.20191223.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::PaymentURLApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentURLApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::PaymentURLApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentURLApi' do
    it 'should create an instance of PaymentURLApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::PaymentURLApi)
    end
  end

  # unit tests for create_payment_url
  # Create a payment URL.
  # Use this to generate an embedding payment link.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param payment_url_request Accepted request type: PaymentUrlRequest.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @return [PaymentUrlResponse]
  describe 'create_payment_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_payment_url
  # Delete a payment URL.
  # Use this to delete an embedding payment link.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
  # @option opts [String] :transaction_id Gateway transaction identifier as returned in the parameter ipgTransactionId.
  # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
  # @option opts [String] :payment_url_id The ID code from the payment URL.
  # @option opts [String] :transaction_time The transaction time in seconds since epoch.
  # @return [PaymentUrlResponse]
  describe 'delete_payment_url test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for payment_url_detail
  # Retrieve the state of payment URL.
  # Use this query to get the current state of an existing paymentURL.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param from_date The start date for payment URL in seconds since epoch.
  # @param to_date The end date for payment URL search query in seconds since epoch.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @option opts [String] :store_id An optional outlet ID for clients that support multiple stores in the same developer app.
  # @option opts [String] :order_id Gateway order identifier as returned in the parameter orderId.
  # @option opts [String] :merchant_transaction_id Gateway merchant identifier as returned in the parameter merchantTransactionId.
  # @option opts [String] :status The status of payment URL.
  # @return [PaymentUrlDetailResponse]
  describe 'payment_url_detail test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
