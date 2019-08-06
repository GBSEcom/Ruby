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

# Unit tests for OpenapiClient::Secure3dAuthenticationVerificationRequestAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Secure3dAuthenticationVerificationRequestAllOf' do
  before do
    # run before each test
    @instance = OpenapiClient::Secure3dAuthenticationVerificationRequestAllOf.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Secure3dAuthenticationVerificationRequestAllOf' do
    it 'should create an instance of Secure3dAuthenticationVerificationRequestAllOf' do
      expect(@instance).to be_instance_of(OpenapiClient::Secure3dAuthenticationVerificationRequestAllOf)
    end
  end
  describe 'test attribute "payer_authentication_response"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "merchant_data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end