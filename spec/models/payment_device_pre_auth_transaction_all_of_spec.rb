=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::PaymentDevicePreAuthTransactionAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentDevicePreAuthTransactionAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::PaymentDevicePreAuthTransactionAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentDevicePreAuthTransactionAllOf' do
    it 'should create an instance of PaymentDevicePreAuthTransactionAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::PaymentDevicePreAuthTransactionAllOf)
    end
  end
  describe 'test attribute "payment_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "create_token"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "settlement_split"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "stored_credentials"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "split_shipment"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "decremental_flag"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
