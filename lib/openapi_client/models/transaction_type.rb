=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  class TransactionType
    SALE = "SALE".freeze
    PREAUTH = "PREAUTH".freeze
    CREDIT = "CREDIT".freeze
    FORCED_TICKET = "FORCED_TICKET".freeze
    VOID = "VOID".freeze
    RETURN = "RETURN".freeze
    POSTAUTH = "POSTAUTH".freeze
    PAYER_AUTH = "PAYER_AUTH".freeze
    DISBURSEMENT = "DISBURSEMENT".freeze

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
      constantValues = TransactionType.constants.select { |c| TransactionType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #TransactionType" if constantValues.empty?
      value
    end
  end
end
