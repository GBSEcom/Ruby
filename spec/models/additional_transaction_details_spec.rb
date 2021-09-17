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

# Unit tests for OpenapiClient::AdditionalTransactionDetails
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdditionalTransactionDetails' do
  before do
    # run before each test
    @instance = OpenapiClient::AdditionalTransactionDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdditionalTransactionDetails' do
    it 'should create an instance of AdditionalTransactionDetails' do
      expect(@instance).to be_instance_of(OpenapiClient::AdditionalTransactionDetails)
    end
  end
  describe 'test attribute "comments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "invoice_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "purchase_order_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "disbursement_trans_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FUNDING", "DISBURSEMENT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.disbursement_trans_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "wallet_provider"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["GOOGLE_PAY", "APPLE_PAY", "SAMSUNG_PAY", "MASTERPASS"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.wallet_provider = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "receipts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "additional_response_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
