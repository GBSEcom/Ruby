=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.4.0.20210824.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Customer contact information.
  class Contact
    # Primary phone number.
    attr_accessor :phone

    # Mobile phone number.
    attr_accessor :mobile_phone

    # Fax number.
    attr_accessor :fax

    # Email address.
    attr_accessor :email

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'phone' => :'phone',
        :'mobile_phone' => :'mobilePhone',
        :'fax' => :'fax',
        :'email' => :'email'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'phone' => :'String',
        :'mobile_phone' => :'String',
        :'fax' => :'String',
        :'email' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Contact` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Contact`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'mobile_phone')
        self.mobile_phone = attributes[:'mobile_phone']
      end

      if attributes.key?(:'fax')
        self.fax = attributes[:'fax']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@phone.nil? && @phone.to_s.length > 32
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 32.')
      end

      if !@mobile_phone.nil? && @mobile_phone.to_s.length > 32
        invalid_properties.push('invalid value for "mobile_phone", the character length must be smaller than or equal to 32.')
      end

      if !@fax.nil? && @fax.to_s.length > 32
        invalid_properties.push('invalid value for "fax", the character length must be smaller than or equal to 32.')
      end

      if !@email.nil? && @email.to_s.length > 254
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 254.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@phone.nil? && @phone.to_s.length > 32
      return false if !@mobile_phone.nil? && @mobile_phone.to_s.length > 32
      return false if !@fax.nil? && @fax.to_s.length > 32
      return false if !@email.nil? && @email.to_s.length > 254
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if !phone.nil? && phone.to_s.length > 32
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 32.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] mobile_phone Value to be assigned
    def mobile_phone=(mobile_phone)
      if !mobile_phone.nil? && mobile_phone.to_s.length > 32
        fail ArgumentError, 'invalid value for "mobile_phone", the character length must be smaller than or equal to 32.'
      end

      @mobile_phone = mobile_phone
    end

    # Custom attribute writer method with validation
    # @param [Object] fax Value to be assigned
    def fax=(fax)
      if !fax.nil? && fax.to_s.length > 32
        fail ArgumentError, 'invalid value for "fax", the character length must be smaller than or equal to 32.'
      end

      @fax = fax
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 254
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 254.'
      end

      @email = email
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          phone == o.phone &&
          mobile_phone == o.mobile_phone &&
          fax == o.fax &&
          email == o.email
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [phone, mobile_phone, fax, email].hash
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
