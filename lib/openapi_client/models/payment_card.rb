=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.10.1.20200226.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Payment card model.
  class PaymentCard
    # Payment card number.
    attr_accessor :number

    attr_accessor :expiry_date

    # Card verification value/number.
    attr_accessor :security_code

    attr_accessor :card_function

    # Name of the cardholder.
    attr_accessor :cardholder_name

    # The payment card BIN.
    attr_accessor :bin

    # The last 4 numbers of a payment card.
    attr_accessor :last4

    # Required only if using dual branded card.
    attr_accessor :brand

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'number' => :'number',
        :'expiry_date' => :'expiryDate',
        :'security_code' => :'securityCode',
        :'card_function' => :'cardFunction',
        :'cardholder_name' => :'cardholderName',
        :'bin' => :'bin',
        :'last4' => :'last4',
        :'brand' => :'brand'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'number' => :'String',
        :'expiry_date' => :'Expiration',
        :'security_code' => :'String',
        :'card_function' => :'CardFunction',
        :'cardholder_name' => :'String',
        :'bin' => :'String',
        :'last4' => :'String',
        :'brand' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PaymentCard` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PaymentCard`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'expiry_date')
        self.expiry_date = attributes[:'expiry_date']
      end

      if attributes.key?(:'security_code')
        self.security_code = attributes[:'security_code']
      end

      if attributes.key?(:'card_function')
        self.card_function = attributes[:'card_function']
      end

      if attributes.key?(:'cardholder_name')
        self.cardholder_name = attributes[:'cardholder_name']
      end

      if attributes.key?(:'bin')
        self.bin = attributes[:'bin']
      end

      if attributes.key?(:'last4')
        self.last4 = attributes[:'last4']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      pattern = Regexp.new(/[0-9]{13,19}/)
      if @number !~ pattern
        invalid_properties.push("invalid value for \"number\", must conform to the pattern #{pattern}.")
      end

      if !@security_code.nil? && @security_code.to_s.length > 4
        invalid_properties.push('invalid value for "security_code", the character length must be smaller than or equal to 4.')
      end

      if !@security_code.nil? && @security_code.to_s.length < 3
        invalid_properties.push('invalid value for "security_code", the character length must be great than or equal to 3.')
      end

      if !@cardholder_name.nil? && @cardholder_name.to_s.length > 96
        invalid_properties.push('invalid value for "cardholder_name", the character length must be smaller than or equal to 96.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @number.nil?
      return false if @number !~ Regexp.new(/[0-9]{13,19}/)
      return false if !@security_code.nil? && @security_code.to_s.length > 4
      return false if !@security_code.nil? && @security_code.to_s.length < 3
      return false if !@cardholder_name.nil? && @cardholder_name.to_s.length > 96
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.nil?
        fail ArgumentError, 'number cannot be nil'
      end

      pattern = Regexp.new(/[0-9]{13,19}/)
      if number !~ pattern
        fail ArgumentError, "invalid value for \"number\", must conform to the pattern #{pattern}."
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] security_code Value to be assigned
    def security_code=(security_code)
      if !security_code.nil? && security_code.to_s.length > 4
        fail ArgumentError, 'invalid value for "security_code", the character length must be smaller than or equal to 4.'
      end

      if !security_code.nil? && security_code.to_s.length < 3
        fail ArgumentError, 'invalid value for "security_code", the character length must be great than or equal to 3.'
      end

      @security_code = security_code
    end

    # Custom attribute writer method with validation
    # @param [Object] cardholder_name Value to be assigned
    def cardholder_name=(cardholder_name)
      if !cardholder_name.nil? && cardholder_name.to_s.length > 96
        fail ArgumentError, 'invalid value for "cardholder_name", the character length must be smaller than or equal to 96.'
      end

      @cardholder_name = cardholder_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number == o.number &&
          expiry_date == o.expiry_date &&
          security_code == o.security_code &&
          card_function == o.card_function &&
          cardholder_name == o.cardholder_name &&
          bin == o.bin &&
          last4 == o.last4 &&
          brand == o.brand
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [number, expiry_date, security_code, card_function, cardholder_name, bin, last4, brand].hash
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
