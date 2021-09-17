=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.4.0.20210824.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::FraudRegistrationResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FraudRegistrationResponse' do
  before do
    # run before each test
    @instance = OpenapiClient::FraudRegistrationResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FraudRegistrationResponse' do
    it 'should create an instance of FraudRegistrationResponse' do
      expect(@instance).to be_instance_of(OpenapiClient::FraudRegistrationResponse)
    end
  end
  describe 'test attribute "correlation_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Scored Successfully", "Not Processed"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.transaction_status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "validation_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fraud_score"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "error"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
