=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.12.0.20200605.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class FontFace
    ARIAL = "arial".freeze
    COURIER_NEW = "courier new".freeze
    TIMES_NEW_ROMAN = "times new roman".freeze
    TREBUCHET_MS = "trebuchet ms".freeze
    VERDANA = "verdana".freeze

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
      constantValues = FontFace.constants.select { |c| FontFace::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #FontFace" if constantValues.empty?
      value
    end
  end
end