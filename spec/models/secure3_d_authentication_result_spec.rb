=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.2.0.20210406.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Secure3DAuthenticationResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Secure3DAuthenticationResult' do
  before do
    # run before each test
    @instance = OpenapiClient::Secure3DAuthenticationResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Secure3DAuthenticationResult' do
    it 'should create an instance of Secure3DAuthenticationResult' do
      expect(@instance).to be_instance_of(OpenapiClient::Secure3DAuthenticationResult)
    end
  end
  describe 'test attribute "cavv"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "xid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ds_transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "authentication_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["A", "N", "U", "Y", "C", "R"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.authentication_response = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "transaction_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["A", "N", "U", "Y", "C", "R"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.transaction_status = value }.not_to raise_error
      # end
    end
  end

end