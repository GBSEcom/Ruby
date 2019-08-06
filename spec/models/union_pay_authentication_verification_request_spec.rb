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

# Unit tests for OpenapiClient::UnionPayAuthenticationVerificationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UnionPayAuthenticationVerificationRequest' do
  before do
    # run before each test
    @instance = OpenapiClient::UnionPayAuthenticationVerificationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UnionPayAuthenticationVerificationRequest' do
    it 'should create an instance of UnionPayAuthenticationVerificationRequest' do
      expect(@instance).to be_instance_of(OpenapiClient::UnionPayAuthenticationVerificationRequest)
    end
  end
  describe 'test attribute "sms_verification_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
