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

# Unit tests for OpenapiClient::SoftDescriptor
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SoftDescriptor' do
  before do
    # run before each test
    @instance = OpenapiClient::SoftDescriptor.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SoftDescriptor' do
    it 'should create an instance of SoftDescriptor' do
      expect(@instance).to be_instance_of(OpenapiClient::SoftDescriptor)
    end
  end
  describe 'test attribute "dynamic_merchant_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "mcc"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
