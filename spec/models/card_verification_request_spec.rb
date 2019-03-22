=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::CardVerificationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CardVerificationRequest' do
  before do
    # run before each test
    @instance = OpenapiClient::CardVerificationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CardVerificationRequest' do
    it 'should create an instance of CardVerificationRequest' do
      expect(@instance).to be_instance_of(OpenapiClient::CardVerificationRequest)
    end
  end
  describe 'test attribute "payment_card"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "billing_address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
