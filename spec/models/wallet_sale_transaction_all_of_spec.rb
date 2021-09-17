=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.4.0.20210824.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::WalletSaleTransactionAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WalletSaleTransactionAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::WalletSaleTransactionAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WalletSaleTransactionAllOf' do
    it 'should create an instance of WalletSaleTransactionAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::WalletSaleTransactionAllOf)
    end
  end
  describe 'test attribute "wallet_payment_method"' do
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
