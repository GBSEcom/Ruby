=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.13.0.20200810.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # The encrypted wallet payload.
  class EncryptedGooglePayData
    # The encrypted message containing the actual payment information as well as additional security fields.
    attr_accessor :encrypted_message

    # The ephemeral public key associated with the private key to encrypt the message in uncompressed point format.
    attr_accessor :ephemeral_public_key

    # MAC of the encryptedMessage.
    attr_accessor :tag

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'encrypted_message' => :'encryptedMessage',
        :'ephemeral_public_key' => :'ephemeralPublicKey',
        :'tag' => :'tag'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'encrypted_message' => :'String',
        :'ephemeral_public_key' => :'String',
        :'tag' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::EncryptedGooglePayData` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::EncryptedGooglePayData`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'encrypted_message')
        self.encrypted_message = attributes[:'encrypted_message']
      end

      if attributes.key?(:'ephemeral_public_key')
        self.ephemeral_public_key = attributes[:'ephemeral_public_key']
      end

      if attributes.key?(:'tag')
        self.tag = attributes[:'tag']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @encrypted_message.nil?
        invalid_properties.push('invalid value for "encrypted_message", encrypted_message cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @encrypted_message !~ pattern
        invalid_properties.push("invalid value for \"encrypted_message\", must conform to the pattern #{pattern}.")
      end

      if @ephemeral_public_key.nil?
        invalid_properties.push('invalid value for "ephemeral_public_key", ephemeral_public_key cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @ephemeral_public_key !~ pattern
        invalid_properties.push("invalid value for \"ephemeral_public_key\", must conform to the pattern #{pattern}.")
      end

      if @tag.nil?
        invalid_properties.push('invalid value for "tag", tag cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @tag !~ pattern
        invalid_properties.push("invalid value for \"tag\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @encrypted_message.nil?
      return false if @encrypted_message !~ Regexp.new(/^(?!\s*$).+/)
      return false if @ephemeral_public_key.nil?
      return false if @ephemeral_public_key !~ Regexp.new(/^(?!\s*$).+/)
      return false if @tag.nil?
      return false if @tag !~ Regexp.new(/^(?!\s*$).+/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] encrypted_message Value to be assigned
    def encrypted_message=(encrypted_message)
      if encrypted_message.nil?
        fail ArgumentError, 'encrypted_message cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if encrypted_message !~ pattern
        fail ArgumentError, "invalid value for \"encrypted_message\", must conform to the pattern #{pattern}."
      end

      @encrypted_message = encrypted_message
    end

    # Custom attribute writer method with validation
    # @param [Object] ephemeral_public_key Value to be assigned
    def ephemeral_public_key=(ephemeral_public_key)
      if ephemeral_public_key.nil?
        fail ArgumentError, 'ephemeral_public_key cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if ephemeral_public_key !~ pattern
        fail ArgumentError, "invalid value for \"ephemeral_public_key\", must conform to the pattern #{pattern}."
      end

      @ephemeral_public_key = ephemeral_public_key
    end

    # Custom attribute writer method with validation
    # @param [Object] tag Value to be assigned
    def tag=(tag)
      if tag.nil?
        fail ArgumentError, 'tag cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if tag !~ pattern
        fail ArgumentError, "invalid value for \"tag\", must conform to the pattern #{pattern}."
      end

      @tag = tag
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          encrypted_message == o.encrypted_message &&
          ephemeral_public_key == o.ephemeral_public_key &&
          tag == o.tag
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [encrypted_message, ephemeral_public_key, tag].hash
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
    def build_from_hash(attributes, attribute_map = self.class.attribute_map, openapi_types = self.class.openapi_types)
      return nil unless attributes.is_a?(Hash)
      openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[attribute_map[key]]))
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
        klass = OpenapiClient.const_get(type)
        if klass.respond_to?(:openapi_discriminator_name)
          klass = OpenapiClient.const_get(value[klass.attribute_map[klass.openapi_discriminator_name]])
        end
 
        klass.build_from_hash(value)
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
    def to_hash(attribute_map = self.class.attribute_map, openapi_nullable = Set.new([]))
      hash = {}
      attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
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
