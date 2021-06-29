=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.3.0.20210608.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::CarRentalExtraCharges
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CarRentalExtraCharges' do
  before do
    # run before each test
    @instance = OpenapiClient::CarRentalExtraCharges.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CarRentalExtraCharges' do
    it 'should create an instance of CarRentalExtraCharges' do
      expect(@instance).to be_instance_of(OpenapiClient::CarRentalExtraCharges)
    end
  end
  describe 'test attribute "charge_item"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["EXTRA_MILEAGE", "GAS", "LATE_RETURN", "ONE_WAY_SERVICE_FEE", "PARKING_VIOLATION"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.charge_item = value }.not_to raise_error
      # end
    end
  end

end
