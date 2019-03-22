=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::CurrencyConversionApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CurrencyConversionApi' do
  before do
    # run before each test
    @instance = OpenapiClient::CurrencyConversionApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CurrencyConversionApi' do
    it 'should create an instance of CurrencyConversionApi' do
      expect(@instance).to be_instance_of(OpenapiClient::CurrencyConversionApi)
    end
  end

  # unit tests for get_exchange_rate
  # Generate dynamic currency conversion transactions
  # Sale, return and lookup exchange rate with dynamic currency conversion option
  # @param content_type content type
  # @param client_request_id A client-generated ID for request tracking and signature creation, unique per request.  This is also used for idempotency control. We recommend 128-bit UUID format.
  # @param api_key 
  # @param timestamp Epoch timestamp in milliseconds in the request from a client system. Used for Message Signature generation and time limit (5 mins).
  # @param exchange_rate_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :message_signature Used to ensure the request has not been tampered with during transmission. The Message-Signature is the Base64 encoded HMAC hash (SHA256  algorithm with the API Secret as the key.) For more information, refer to the supporting documentation on the Developer Portal.
  # @option opts [String] :region The region where client wants to process the transaction
  # @return [ExchangeRateResponse]
  describe 'get_exchange_rate test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
