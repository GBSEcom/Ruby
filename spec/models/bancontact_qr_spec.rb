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

# Unit tests for OpenapiClient::BancontactQR
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BancontactQR' do
  before do
    # run before each test
    @instance = OpenapiClient::BancontactQR.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BancontactQR' do
    it 'should create an instance of BancontactQR' do
      expect(@instance).to be_instance_of(OpenapiClient::BancontactQR)
    end
  end
  describe 'test attribute "transaction_routing_means"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["QR Code", "URL Intent"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.transaction_routing_means = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "issuer_customer_reference"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
