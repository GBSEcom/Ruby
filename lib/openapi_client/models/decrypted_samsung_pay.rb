=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.13.0.20200810.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Decrypted Samsung Pay payload.
  class DecryptedSamsungPay
    # Payment card number.
    attr_accessor :account_number

    # Card expiration date in MMYYYY format.
    attr_accessor :expiration

    # Name of the cardholder.
    attr_accessor :cardholder_name

    # Card brand.
    attr_accessor :brand

    # The wallet cryptogram from the decrypted data.
    attr_accessor :cryptogram

    # The ECI indicator from the decrypted data.
    attr_accessor :eci_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_number' => :'accountNumber',
        :'expiration' => :'expiration',
        :'cardholder_name' => :'cardholderName',
        :'brand' => :'brand',
        :'cryptogram' => :'cryptogram',
        :'eci_indicator' => :'eciIndicator'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_number' => :'String',
        :'expiration' => :'String',
        :'cardholder_name' => :'String',
        :'brand' => :'String',
        :'cryptogram' => :'String',
        :'eci_indicator' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::DecryptedSamsungPay` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::DecryptedSamsungPay`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'expiration')
        self.expiration = attributes[:'expiration']
      end

      if attributes.key?(:'cardholder_name')
        self.cardholder_name = attributes[:'cardholder_name']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'cryptogram')
        self.cryptogram = attributes[:'cryptogram']
      end

      if attributes.key?(:'eci_indicator')
        self.eci_indicator = attributes[:'eci_indicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @account_number.nil?
        invalid_properties.push('invalid value for "account_number", account_number cannot be nil.')
      end

      pattern = Regexp.new(/[0-9]{13,19}/)
      if @account_number !~ pattern
        invalid_properties.push("invalid value for \"account_number\", must conform to the pattern #{pattern}.")
      end

      if @expiration.nil?
        invalid_properties.push('invalid value for "expiration", expiration cannot be nil.')
      end

      pattern = Regexp.new(/[0-9]{6}/)
      if @expiration !~ pattern
        invalid_properties.push("invalid value for \"expiration\", must conform to the pattern #{pattern}.")
      end

      if !@cardholder_name.nil? && @cardholder_name.to_s.length > 96
        invalid_properties.push('invalid value for "cardholder_name", the character length must be smaller than or equal to 96.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if !@cardholder_name.nil? && @cardholder_name !~ pattern
        invalid_properties.push("invalid value for \"cardholder_name\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if !@brand.nil? && @brand !~ pattern
        invalid_properties.push("invalid value for \"brand\", must conform to the pattern #{pattern}.")
      end

      if @cryptogram.nil?
        invalid_properties.push('invalid value for "cryptogram", cryptogram cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @cryptogram !~ pattern
        invalid_properties.push("invalid value for \"cryptogram\", must conform to the pattern #{pattern}.")
      end

      if @eci_indicator.nil?
        invalid_properties.push('invalid value for "eci_indicator", eci_indicator cannot be nil.')
      end

      pattern = Regexp.new(/[0-9]{2}/)
      if @eci_indicator !~ pattern
        invalid_properties.push("invalid value for \"eci_indicator\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account_number.nil?
      return false if @account_number !~ Regexp.new(/[0-9]{13,19}/)
      return false if @expiration.nil?
      return false if @expiration !~ Regexp.new(/[0-9]{6}/)
      return false if !@cardholder_name.nil? && @cardholder_name.to_s.length > 96
      return false if !@cardholder_name.nil? && @cardholder_name !~ Regexp.new(/^(?!\s*$).+/)
      return false if !@brand.nil? && @brand !~ Regexp.new(/^(?!\s*$).+/)
      return false if @cryptogram.nil?
      return false if @cryptogram !~ Regexp.new(/^(?!\s*$).+/)
      return false if @eci_indicator.nil?
      return false if @eci_indicator !~ Regexp.new(/[0-9]{2}/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if account_number.nil?
        fail ArgumentError, 'account_number cannot be nil'
      end

      pattern = Regexp.new(/[0-9]{13,19}/)
      if account_number !~ pattern
        fail ArgumentError, "invalid value for \"account_number\", must conform to the pattern #{pattern}."
      end

      @account_number = account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] expiration Value to be assigned
    def expiration=(expiration)
      if expiration.nil?
        fail ArgumentError, 'expiration cannot be nil'
      end

      pattern = Regexp.new(/[0-9]{6}/)
      if expiration !~ pattern
        fail ArgumentError, "invalid value for \"expiration\", must conform to the pattern #{pattern}."
      end

      @expiration = expiration
    end

    # Custom attribute writer method with validation
    # @param [Object] cardholder_name Value to be assigned
    def cardholder_name=(cardholder_name)
      if !cardholder_name.nil? && cardholder_name.to_s.length > 96
        fail ArgumentError, 'invalid value for "cardholder_name", the character length must be smaller than or equal to 96.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if !cardholder_name.nil? && cardholder_name !~ pattern
        fail ArgumentError, "invalid value for \"cardholder_name\", must conform to the pattern #{pattern}."
      end

      @cardholder_name = cardholder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] brand Value to be assigned
    def brand=(brand)
      pattern = Regexp.new(/^(?!\s*$).+/)
      if !brand.nil? && brand !~ pattern
        fail ArgumentError, "invalid value for \"brand\", must conform to the pattern #{pattern}."
      end

      @brand = brand
    end

    # Custom attribute writer method with validation
    # @param [Object] cryptogram Value to be assigned
    def cryptogram=(cryptogram)
      if cryptogram.nil?
        fail ArgumentError, 'cryptogram cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if cryptogram !~ pattern
        fail ArgumentError, "invalid value for \"cryptogram\", must conform to the pattern #{pattern}."
      end

      @cryptogram = cryptogram
    end

    # Custom attribute writer method with validation
    # @param [Object] eci_indicator Value to be assigned
    def eci_indicator=(eci_indicator)
      if eci_indicator.nil?
        fail ArgumentError, 'eci_indicator cannot be nil'
      end

      pattern = Regexp.new(/[0-9]{2}/)
      if eci_indicator !~ pattern
        fail ArgumentError, "invalid value for \"eci_indicator\", must conform to the pattern #{pattern}."
      end

      @eci_indicator = eci_indicator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_number == o.account_number &&
          expiration == o.expiration &&
          cardholder_name == o.cardholder_name &&
          brand == o.brand &&
          cryptogram == o.cryptogram &&
          eci_indicator == o.eci_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, expiration, cardholder_name, brand, cryptogram, eci_indicator].hash
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
