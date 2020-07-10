=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.12.0.20200605.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Secure3D10AuthenticationResultAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Secure3D10AuthenticationResultAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::Secure3D10AuthenticationResultAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Secure3D10AuthenticationResultAllOf' do
    it 'should create an instance of Secure3D10AuthenticationResultAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::Secure3D10AuthenticationResultAllOf)
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

  describe 'test attribute "authentication_attempt_result"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Y", "N", "U", "A"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.authentication_attempt_result = value }.not_to raise_error
      # end
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

end
