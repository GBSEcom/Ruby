=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.8.0.20190731.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class Secure3D10AuthenticationResultAllOf
    # Card enrollment result from the Verification Response (VeRes).
    attr_accessor :verification_response

    # Result of authentication attempt from Payer Authentication Response (PaRes).
    attr_accessor :authentication_attempt_result

    # The Cardholder Authentication Verification Value (CAVV) is a cryptographic value derived by the issuer during payment authentication that can provide evidence of the results of payment authentication during an online purchase.
    attr_accessor :cavv

    # The transaction identifier (XID) is a unique tracking number set by the merchant.
    attr_accessor :xid

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
        :'verification_response' => :'verificationResponse',
        :'authentication_attempt_result' => :'authenticationAttemptResult',
        :'cavv' => :'cavv',
        :'xid' => :'xid'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'verification_response' => :'String',
        :'authentication_attempt_result' => :'String',
        :'cavv' => :'String',
        :'xid' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Secure3D10AuthenticationResultAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Secure3D10AuthenticationResultAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'verification_response')
        self.verification_response = attributes[:'verification_response']
      end

      if attributes.key?(:'authentication_attempt_result')
        self.authentication_attempt_result = attributes[:'authentication_attempt_result']
      end

      if attributes.key?(:'cavv')
        self.cavv = attributes[:'cavv']
      end

      if attributes.key?(:'xid')
        self.xid = attributes[:'xid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@cavv.nil? && @cavv.to_s.length > 32
        invalid_properties.push('invalid value for "cavv", the character length must be smaller than or equal to 32.')
      end

      if !@cavv.nil? && @cavv.to_s.length < 20
        invalid_properties.push('invalid value for "cavv", the character length must be great than or equal to 20.')
      end

      if !@xid.nil? && @xid.to_s.length > 32
        invalid_properties.push('invalid value for "xid", the character length must be smaller than or equal to 32.')
      end

      if !@xid.nil? && @xid.to_s.length < 20
        invalid_properties.push('invalid value for "xid", the character length must be great than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      verification_response_validator = EnumAttributeValidator.new('String', ["Y", "N", "U"])
      return false unless verification_response_validator.valid?(@verification_response)
      authentication_attempt_result_validator = EnumAttributeValidator.new('String', ["Y", "N", "U", "A"])
      return false unless authentication_attempt_result_validator.valid?(@authentication_attempt_result)
      return false if !@cavv.nil? && @cavv.to_s.length > 32
      return false if !@cavv.nil? && @cavv.to_s.length < 20
      return false if !@xid.nil? && @xid.to_s.length > 32
      return false if !@xid.nil? && @xid.to_s.length < 20
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_response Object to be assigned
    def verification_response=(verification_response)
      validator = EnumAttributeValidator.new('String', ["Y", "N", "U"])
      unless validator.valid?(verification_response)
        fail ArgumentError, "invalid value for \"verification_response\", must be one of #{validator.allowable_values}."
      end
      @verification_response = verification_response
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_attempt_result Object to be assigned
    def authentication_attempt_result=(authentication_attempt_result)
      validator = EnumAttributeValidator.new('String', ["Y", "N", "U", "A"])
      unless validator.valid?(authentication_attempt_result)
        fail ArgumentError, "invalid value for \"authentication_attempt_result\", must be one of #{validator.allowable_values}."
      end
      @authentication_attempt_result = authentication_attempt_result
    end

    # Custom attribute writer method with validation
    # @param [Object] cavv Value to be assigned
    def cavv=(cavv)
      if !cavv.nil? && cavv.to_s.length > 32
        fail ArgumentError, 'invalid value for "cavv", the character length must be smaller than or equal to 32.'
      end

      if !cavv.nil? && cavv.to_s.length < 20
        fail ArgumentError, 'invalid value for "cavv", the character length must be great than or equal to 20.'
      end

      @cavv = cavv
    end

    # Custom attribute writer method with validation
    # @param [Object] xid Value to be assigned
    def xid=(xid)
      if !xid.nil? && xid.to_s.length > 32
        fail ArgumentError, 'invalid value for "xid", the character length must be smaller than or equal to 32.'
      end

      if !xid.nil? && xid.to_s.length < 20
        fail ArgumentError, 'invalid value for "xid", the character length must be great than or equal to 20.'
      end

      @xid = xid
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          verification_response == o.verification_response &&
          authentication_attempt_result == o.authentication_attempt_result &&
          cavv == o.cavv &&
          xid == o.xid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [verification_response, authentication_attempt_result, cavv, xid].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
      when :Boolean
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
        OpenapiClient.const_get(type).build_from_hash(value)
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
