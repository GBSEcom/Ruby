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

# Unit tests for OpenapiClient::LodgingExtraCharges
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LodgingExtraCharges' do
  before do
    # run before each test
    @instance = OpenapiClient::LodgingExtraCharges.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LodgingExtraCharges' do
    it 'should create an instance of LodgingExtraCharges' do
      expect(@instance).to be_instance_of(OpenapiClient::LodgingExtraCharges)
    end
  end
  describe 'test attribute "charge_item"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["GIFT_SHOP", "LAUNDRY", "MINI_BAR", "RESTAURANT", "TELEPHONE", "OTHER"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.charge_item = value }.not_to raise_error
      # end
    end
  end

end
