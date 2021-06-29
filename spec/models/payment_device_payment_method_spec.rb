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

# Unit tests for OpenapiClient::PaymentDevicePaymentMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentDevicePaymentMethod' do
  before do
    # run before each test
    @instance = OpenapiClient::PaymentDevicePaymentMethod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentDevicePaymentMethod' do
    it 'should create an instance of PaymentDevicePaymentMethod' do
      expect(@instance).to be_instance_of(OpenapiClient::PaymentDevicePaymentMethod)
    end
  end
  describe 'test attribute "payment_device"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payment_facilitator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
