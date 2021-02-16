=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::DecryptedSamsungPayWalletPaymentMethodAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'DecryptedSamsungPayWalletPaymentMethodAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::DecryptedSamsungPayWalletPaymentMethodAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DecryptedSamsungPayWalletPaymentMethodAllOf' do
    it 'should create an instance of DecryptedSamsungPayWalletPaymentMethodAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::DecryptedSamsungPayWalletPaymentMethodAllOf)
    end
  end
  describe 'test attribute "decrypted_samsung_pay"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
