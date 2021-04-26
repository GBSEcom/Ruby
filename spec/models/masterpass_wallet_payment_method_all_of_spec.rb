=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.2.0.20210406.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::MasterpassWalletPaymentMethodAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MasterpassWalletPaymentMethodAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::MasterpassWalletPaymentMethodAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MasterpassWalletPaymentMethodAllOf' do
    it 'should create an instance of MasterpassWalletPaymentMethodAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::MasterpassWalletPaymentMethodAllOf)
    end
  end
  describe 'test attribute "wallet_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "payment_card"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
