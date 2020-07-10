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

# Unit tests for OpenapiClient::Secure3D21AuthenticationUpdateRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Secure3D21AuthenticationUpdateRequest' do
  before do
    # run before each test
    @instance = OpenapiClient::Secure3D21AuthenticationUpdateRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Secure3D21AuthenticationUpdateRequest' do
    it 'should create an instance of Secure3D21AuthenticationUpdateRequest' do
      expect(@instance).to be_instance_of(OpenapiClient::Secure3D21AuthenticationUpdateRequest)
    end
  end
  describe 'test attribute "method_notification_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["RECEIVED", "EXPECTED_BUT_NOT_RECEIVED", "NOT_EXPECTED"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.method_notification_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "acs_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
