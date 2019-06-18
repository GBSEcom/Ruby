=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

OpenAPI spec version: 6.6.0.20190329.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenapiClient::ChinaDomesticPaymentMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ChinaDomesticPaymentMethod' do
  before do
    # run before each test
    @instance = OpenapiClient::ChinaDomesticPaymentMethod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChinaDomesticPaymentMethod' do
    it 'should create an instance of ChinaDomesticPaymentMethod' do
      expect(@instance).to be_instance_of(OpenapiClient::ChinaDomesticPaymentMethod)
    end
  end
  describe 'test attribute "china_domestic"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "brand"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ALIPAY_DOMESTIC", "CUP_DOMESTIC", "WECHAT_DOMESTIC"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.brand = value }.not_to raise_error
      # end
    end
  end

end