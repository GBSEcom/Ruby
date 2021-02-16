=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CurrencyConversionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CurrencyConversionApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::CurrencyConversionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrencyConversionApi' do
    it 'should create an instance of CurrencyConversionApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::CurrencyConversionApi)
    end
  end

  # unit tests for get_exchange_rate
  # Generate dynamic currency conversion transactions.
  # Sale, return and lookup exchange rate with dynamic currency conversion option.
  # @param content_type Content type.
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key Key given to merchant after boarding associating their requests with the appropriate app in Apigee.
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param exchange_rate_request Accepted request types: DCCExchangeRateRequest and DynamicPricingExchangeRateRequest.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256 algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region Indicates the region where the client wants the transaction to be processed. This will override the default processing region identified for the client. Available options are argentina, brazil, germany, india and northamerica. Region specific store setup and APIGEE boarding is required in order to use an alternate region for processing.
  # @return [ExchangeRateResponse]
  describe 'get_exchange_rate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
