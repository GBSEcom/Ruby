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

# Unit tests for OpenapiClient::AirlineAncillaryServiceCategory
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AirlineAncillaryServiceCategory' do
  before do
    # run before each test
    @instance = OpenapiClient::AirlineAncillaryServiceCategory.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AirlineAncillaryServiceCategory' do
    it 'should create an instance of AirlineAncillaryServiceCategory' do
      expect(@instance).to be_instance_of(OpenapiClient::AirlineAncillaryServiceCategory)
    end
  end
  describe 'test attribute "service_category"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["BUNDLED_SERVICE", "BAGGAGE_FEE", "CHANGE_FEE", "CARGO", "CARBON_OFFSET", "FREQUENT_FLYER", "GIFT_CARD", "GROUND_TRANSPORT", "IN_FLIGHT_ENTERTAINMENT", "LOUNGE", "MEDICAL", "MEAL_BEVERAGE", "OTHER", "PASSENGER_ASSIST_FEE", "PETS", "SEAT_FEES", "STANDBY", "SERVICE_FEE", "STORE", "TRAVEL_SERVICE", "UNACCOMPANIED_TRAVEL", "UPGRADES", "WI_FI"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.service_category = value }.not_to raise_error
      # end
    end
  end

end
