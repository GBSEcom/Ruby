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

# Unit tests for OpenapiClient::Secure3D21AuthenticationRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Secure3D21AuthenticationRequest' do
  before do
    # run before each test
    @instance = OpenapiClient::Secure3D21AuthenticationRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Secure3D21AuthenticationRequest' do
    it 'should create an instance of Secure3D21AuthenticationRequest' do
      expect(@instance).to be_instance_of(OpenapiClient::Secure3D21AuthenticationRequest)
    end
  end
  describe 'test attribute "term_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "method_notification_url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "challenge_indicator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.challenge_indicator = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "challenge_window_size"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.challenge_window_size = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "browser_java_script_enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "requestor_authentication_indicator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.requestor_authentication_indicator = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "secure3_d_device_channel"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["02", "03"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.secure3_d_device_channel = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "secure3_d_three_ri_indicator"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.secure3_d_three_ri_indicator = value }.not_to raise_error
      # end
    end
  end

end
