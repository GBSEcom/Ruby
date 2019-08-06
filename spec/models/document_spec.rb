=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.6.0.20190507.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::Document
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Document' do
  before do
    # run before each test
    @instance = OpenapiClient::Document.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Document' do
    it 'should create an instance of Document' do
      expect(@instance).to be_instance_of(OpenapiClient::Document)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NATIONAL_IDENTITY", "SINGLE_TAX_IDENTIFICATION", "SINGLE_CODE_OF_LABOR_IDENTIFICATION", "BOOK_ENLISTMENT", "CIVIC_NOTEBOOK", "PASSPORT"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
