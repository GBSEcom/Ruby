=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::PaymentCardAuthenticationResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentCardAuthenticationResult' do
  before do
    # run before each test
    @instance = OpenapiClient::PaymentCardAuthenticationResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentCardAuthenticationResult' do
    it 'should create an instance of PaymentCardAuthenticationResult' do
      expect(@instance).to be_instance_of(OpenapiClient::PaymentCardAuthenticationResult)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SECURE_3D"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "verification_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Y", "N", "U"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.verification_response = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "payer_authentication_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Y", "N", "U", "A"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.payer_authentication_response = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "authentication_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "xid"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
