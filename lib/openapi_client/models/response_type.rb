=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class ResponseType
    
    BAD_REQUEST = 'BadRequest'.freeze
    UNAUTHENTICATED = 'Unauthenticated'.freeze
    UNAUTHORIZED = 'Unauthorized'.freeze
    NOT_FOUND = 'NotFound'.freeze
    GATEWAY_DECLINED = 'GatewayDeclined'.freeze
    ENDPOINT_DECLINED = 'EndpointDeclined'.freeze
    SERVER_ERROR = 'ServerError'.freeze
    ENDPOINT_COMMUNICATION_ERROR = 'EndpointCommunicationError'.freeze
    UNSUPPORTED_MEDIA_TYPE = 'UnsupportedMediaType'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = ResponseType.constants.select { |c| ResponseType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ResponseType" if constantValues.empty?
      value
    end
  end
end
