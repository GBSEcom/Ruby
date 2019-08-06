=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.6.0.20190507.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class CardFunction
    CREDIT = "CREDIT".freeze
    DEBIT = "DEBIT".freeze
    PREPAID = "PREPAID".freeze
    VOUCHER = "VOUCHER".freeze
    UNDEFINED = "UNDEFINED".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = CardFunction.constants.select { |c| CardFunction::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CardFunction" if constantValues.empty?
      value
    end
  end
end
