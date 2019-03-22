=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

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
