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

# Unit tests for OpenapiClient::CardInfoLookupResponseAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardInfoLookupResponseAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::CardInfoLookupResponseAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardInfoLookupResponseAllOf' do
    it 'should create an instance of CardInfoLookupResponseAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::CardInfoLookupResponseAllOf)
    end
  end
  describe 'test attribute "card_details"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "request_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["SUCCESS", "LIST_EMPTY"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.request_status = value }.not_to raise_error
      # end
    end
  end

end
