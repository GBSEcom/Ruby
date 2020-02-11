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

# Unit tests for OpenapiClient::VoidTransaction
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VoidTransaction' do
  before do
    # run before each test
    @instance = OpenapiClient::VoidTransaction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VoidTransaction' do
    it 'should create an instance of VoidTransaction' do
      expect(@instance).to be_instance_of(OpenapiClient::VoidTransaction)
    end
  end
end
