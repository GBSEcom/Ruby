=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

OpenAPI spec version: 6.6.0.20190329.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Response from card info lookup request.
  class CardInfoLookupResponse
    # Echoes back the value in the request header for tracking.
    attr_accessor :client_request_id

    # Request identifier in API, can be used to request logs from the support team.
    attr_accessor :api_trace_id

    attr_accessor :response_type

    # One or more card information retrieved based on BIN.
    attr_accessor :card_details

    # Request status.
    attr_accessor :request_status

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_request_id' => :'clientRequestId',
        :'api_trace_id' => :'apiTraceId',
        :'response_type' => :'responseType',
        :'card_details' => :'cardDetails',
        :'request_status' => :'requestStatus'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_request_id' => :'String',
        :'api_trace_id' => :'String',
        :'response_type' => :'ResponseType',
        :'card_details' => :'Array<CardInfo>',
        :'request_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'clientRequestId')
        self.client_request_id = attributes[:'clientRequestId']
      end

      if attributes.has_key?(:'apiTraceId')
        self.api_trace_id = attributes[:'apiTraceId']
      end

      if attributes.has_key?(:'responseType')
        self.response_type = attributes[:'responseType']
      end

      if attributes.has_key?(:'cardDetails')
        if (value = attributes[:'cardDetails']).is_a?(Array)
          self.card_details = value
        end
      end

      if attributes.has_key?(:'requestStatus')
        self.request_status = attributes[:'requestStatus']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      request_status_validator = EnumAttributeValidator.new('String', ['SUCCESS', 'LIST_EMPTY'])
      return false unless request_status_validator.valid?(@request_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request_status Object to be assigned
    def request_status=(request_status)
      validator = EnumAttributeValidator.new('String', ['SUCCESS', 'LIST_EMPTY'])
      unless validator.valid?(request_status)
        fail ArgumentError, 'invalid value for "request_status", must be one of #{validator.allowable_values}.'
      end
      @request_status = request_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_request_id == o.client_request_id &&
          api_trace_id == o.api_trace_id &&
          response_type == o.response_type &&
          card_details == o.card_details &&
          request_status == o.request_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client_request_id, api_trace_id, response_type, card_details, request_status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = OpenapiClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
