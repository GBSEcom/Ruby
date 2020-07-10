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

# Unit tests for OpenapiClient::FontWeight
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FontWeight' do
  before do
    # run before each test
    @instance = OpenapiClient::FontWeight.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FontWeight' do
    it 'should create an instance of FontWeight' do
      expect(@instance).to be_instance_of(OpenapiClient::FontWeight)
    end
  end
end
