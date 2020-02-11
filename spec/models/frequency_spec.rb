=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.9.1.20191223.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Frequency
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Frequency' do
  before do
    # run before each test
    @instance = OpenapiClient::Frequency.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Frequency' do
    it 'should create an instance of Frequency' do
      expect(@instance).to be_instance_of(OpenapiClient::Frequency)
    end
  end
  describe 'test attribute "every"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DAY", "WEEK", "MONTH", "YEAR"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.unit = value }.not_to raise_error
      # end
    end
  end

end
