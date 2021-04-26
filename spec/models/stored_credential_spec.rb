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

# Unit tests for OpenapiClient::StoredCredential
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StoredCredential' do
  before do
    # run before each test
    @instance = OpenapiClient::StoredCredential.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StoredCredential' do
    it 'should create an instance of StoredCredential' do
      expect(@instance).to be_instance_of(OpenapiClient::StoredCredential)
    end
  end
  describe 'test attribute "sequence"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FIRST", "SUBSEQUENT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.sequence = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "scheduled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "referenced_scheme_transaction_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "initiator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["MERCHANT", "CARDHOLDER"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.initiator = value }.not_to raise_error
      # end
    end
  end

end
