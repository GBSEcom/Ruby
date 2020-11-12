=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.14.0.20201015.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::InstallmentOptions
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InstallmentOptions' do
  before do
    # run before each test
    @instance = OpenapiClient::InstallmentOptions.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstallmentOptions' do
    it 'should create an instance of InstallmentOptions' do
      expect(@instance).to be_instance_of(OpenapiClient::InstallmentOptions)
    end
  end
  describe 'test attribute "number_of_installments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "installments_interest"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "installment_delay_months"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "recurring_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["FIRST", "REPEAT", "STANDING_INSTRUCTION"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.recurring_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "merchant_advice_code_supported"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
