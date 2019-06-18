=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

OpenAPI spec version: 6.6.0.20190329.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Model for processor data.
  class ProcessorData
    # Reference transaction ID.
    attr_accessor :reference_number

    # Code returned to confirm transaction.
    attr_accessor :authorization_code

    # Response code from endpoints.
    attr_accessor :response_code

    # Network used for transaction.
    attr_accessor :network

    # Raw response code from issuer.
    attr_accessor :association_response_code

    # Message returned from endpoints.
    attr_accessor :response_message

    attr_accessor :avs_response

    # Code returned for CVV.
    attr_accessor :security_code_response

    # Code to map merchant advice code to ISO specification.
    attr_accessor :merchant_advice_code_indicator

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
        :'reference_number' => :'referenceNumber',
        :'authorization_code' => :'authorizationCode',
        :'response_code' => :'responseCode',
        :'network' => :'network',
        :'association_response_code' => :'associationResponseCode',
        :'response_message' => :'responseMessage',
        :'avs_response' => :'avsResponse',
        :'security_code_response' => :'securityCodeResponse',
        :'merchant_advice_code_indicator' => :'merchantAdviceCodeIndicator'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'reference_number' => :'String',
        :'authorization_code' => :'String',
        :'response_code' => :'String',
        :'network' => :'String',
        :'association_response_code' => :'String',
        :'response_message' => :'String',
        :'avs_response' => :'AVSResponse',
        :'security_code_response' => :'String',
        :'merchant_advice_code_indicator' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'referenceNumber')
        self.reference_number = attributes[:'referenceNumber']
      end

      if attributes.has_key?(:'authorizationCode')
        self.authorization_code = attributes[:'authorizationCode']
      end

      if attributes.has_key?(:'responseCode')
        self.response_code = attributes[:'responseCode']
      end

      if attributes.has_key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.has_key?(:'associationResponseCode')
        self.association_response_code = attributes[:'associationResponseCode']
      end

      if attributes.has_key?(:'responseMessage')
        self.response_message = attributes[:'responseMessage']
      end

      if attributes.has_key?(:'avsResponse')
        self.avs_response = attributes[:'avsResponse']
      end

      if attributes.has_key?(:'securityCodeResponse')
        self.security_code_response = attributes[:'securityCodeResponse']
      end

      if attributes.has_key?(:'merchantAdviceCodeIndicator')
        self.merchant_advice_code_indicator = attributes[:'merchantAdviceCodeIndicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@merchant_advice_code_indicator.nil? && @merchant_advice_code_indicator !~ Regexp.new(/[0-9]{2}/)
        invalid_properties.push('invalid value for "merchant_advice_code_indicator", must conform to the pattern /[0-9]{2}/.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      security_code_response_validator = EnumAttributeValidator.new('String', ['MATCHED', 'NOT_MATCHED', 'NOT_PROCESSED', 'NOT_PRESENT', 'NOT_CERTIFIED'])
      return false unless security_code_response_validator.valid?(@security_code_response)
      return false if !@merchant_advice_code_indicator.nil? && @merchant_advice_code_indicator !~ Regexp.new(/[0-9]{2}/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] security_code_response Object to be assigned
    def security_code_response=(security_code_response)
      validator = EnumAttributeValidator.new('String', ['MATCHED', 'NOT_MATCHED', 'NOT_PROCESSED', 'NOT_PRESENT', 'NOT_CERTIFIED'])
      unless validator.valid?(security_code_response)
        fail ArgumentError, 'invalid value for "security_code_response", must be one of #{validator.allowable_values}.'
      end
      @security_code_response = security_code_response
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_advice_code_indicator Value to be assigned
    def merchant_advice_code_indicator=(merchant_advice_code_indicator)
      if !merchant_advice_code_indicator.nil? && merchant_advice_code_indicator !~ Regexp.new(/[0-9]{2}/)
        fail ArgumentError, 'invalid value for "merchant_advice_code_indicator", must conform to the pattern /[0-9]{2}/.'
      end

      @merchant_advice_code_indicator = merchant_advice_code_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          reference_number == o.reference_number &&
          authorization_code == o.authorization_code &&
          response_code == o.response_code &&
          network == o.network &&
          association_response_code == o.association_response_code &&
          response_message == o.response_message &&
          avs_response == o.avs_response &&
          security_code_response == o.security_code_response &&
          merchant_advice_code_indicator == o.merchant_advice_code_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [reference_number, authorization_code, response_code, network, association_response_code, response_message, avs_response, security_code_response, merchant_advice_code_indicator].hash
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