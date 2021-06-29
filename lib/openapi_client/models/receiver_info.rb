=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.3.0.20210608.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Receiver information for a funding transaction.
  class ReceiverInfo
    # Receiver name.
    attr_accessor :name

    # Receiver street address.
    attr_accessor :street_address

    # Receiver city.
    attr_accessor :city

    # Receiver state.
    attr_accessor :state_code

    # Receiver country code.
    attr_accessor :country_code

    # Receiver postal code.
    attr_accessor :postal_code

    # Receiver phone number.
    attr_accessor :phone_number

    # Receiver reference number.
    attr_accessor :reference_number

    # Receiver account number.
    attr_accessor :account_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'street_address' => :'streetAddress',
        :'city' => :'city',
        :'state_code' => :'stateCode',
        :'country_code' => :'countryCode',
        :'postal_code' => :'postalCode',
        :'phone_number' => :'phoneNumber',
        :'reference_number' => :'referenceNumber',
        :'account_number' => :'accountNumber'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'street_address' => :'String',
        :'city' => :'String',
        :'state_code' => :'String',
        :'country_code' => :'String',
        :'postal_code' => :'String',
        :'phone_number' => :'String',
        :'reference_number' => :'String',
        :'account_number' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ReceiverInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ReceiverInfo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'street_address')
        self.street_address = attributes[:'street_address']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state_code')
        self.state_code = attributes[:'state_code']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end

      if attributes.key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 70
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 70.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if @street_address.nil?
        invalid_properties.push('invalid value for "street_address", street_address cannot be nil.')
      end

      if @street_address.to_s.length > 50
        invalid_properties.push('invalid value for "street_address", the character length must be smaller than or equal to 50.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @street_address !~ pattern
        invalid_properties.push("invalid value for \"street_address\", must conform to the pattern #{pattern}.")
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length > 25
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 25.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @city !~ pattern
        invalid_properties.push("invalid value for \"city\", must conform to the pattern #{pattern}.")
      end

      if @state_code.nil?
        invalid_properties.push('invalid value for "state_code", state_code cannot be nil.')
      end

      pattern = Regexp.new(/[A-Z]{2}/)
      if @state_code !~ pattern
        invalid_properties.push("invalid value for \"state_code\", must conform to the pattern #{pattern}.")
      end

      if @country_code.nil?
        invalid_properties.push('invalid value for "country_code", country_code cannot be nil.')
      end

      pattern = Regexp.new(/[A-Z]{2}/)
      if @country_code !~ pattern
        invalid_properties.push("invalid value for \"country_code\", must conform to the pattern #{pattern}.")
      end

      if @postal_code.nil?
        invalid_properties.push('invalid value for "postal_code", postal_code cannot be nil.')
      end

      if @postal_code.to_s.length > 5
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 5.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @postal_code !~ pattern
        invalid_properties.push("invalid value for \"postal_code\", must conform to the pattern #{pattern}.")
      end

      if @phone_number.nil?
        invalid_properties.push('invalid value for "phone_number", phone_number cannot be nil.')
      end

      pattern = Regexp.new(/[0-9]{10}/)
      if @phone_number !~ pattern
        invalid_properties.push("invalid value for \"phone_number\", must conform to the pattern #{pattern}.")
      end

      if @reference_number.nil?
        invalid_properties.push('invalid value for "reference_number", reference_number cannot be nil.')
      end

      if @reference_number.to_s.length > 19
        invalid_properties.push('invalid value for "reference_number", the character length must be smaller than or equal to 19.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @reference_number !~ pattern
        invalid_properties.push("invalid value for \"reference_number\", must conform to the pattern #{pattern}.")
      end

      if !@account_number.nil? && @account_number.to_s.length > 19
        invalid_properties.push('invalid value for "account_number", the character length must be smaller than or equal to 19.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if !@account_number.nil? && @account_number !~ pattern
        invalid_properties.push("invalid value for \"account_number\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @name.to_s.length > 70
      return false if @name !~ Regexp.new(/^(?!\s*$).+/)
      return false if @street_address.nil?
      return false if @street_address.to_s.length > 50
      return false if @street_address !~ Regexp.new(/^(?!\s*$).+/)
      return false if @city.nil?
      return false if @city.to_s.length > 25
      return false if @city !~ Regexp.new(/^(?!\s*$).+/)
      return false if @state_code.nil?
      return false if @state_code !~ Regexp.new(/[A-Z]{2}/)
      return false if @country_code.nil?
      return false if @country_code !~ Regexp.new(/[A-Z]{2}/)
      return false if @postal_code.nil?
      return false if @postal_code.to_s.length > 5
      return false if @postal_code !~ Regexp.new(/^(?!\s*$).+/)
      return false if @phone_number.nil?
      return false if @phone_number !~ Regexp.new(/[0-9]{10}/)
      return false if @reference_number.nil?
      return false if @reference_number.to_s.length > 19
      return false if @reference_number !~ Regexp.new(/^(?!\s*$).+/)
      return false if !@account_number.nil? && @account_number.to_s.length > 19
      return false if !@account_number.nil? && @account_number !~ Regexp.new(/^(?!\s*$).+/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 70
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 70.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] street_address Value to be assigned
    def street_address=(street_address)
      if street_address.nil?
        fail ArgumentError, 'street_address cannot be nil'
      end

      if street_address.to_s.length > 50
        fail ArgumentError, 'invalid value for "street_address", the character length must be smaller than or equal to 50.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if street_address !~ pattern
        fail ArgumentError, "invalid value for \"street_address\", must conform to the pattern #{pattern}."
      end

      @street_address = street_address
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 25
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 25.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if city !~ pattern
        fail ArgumentError, "invalid value for \"city\", must conform to the pattern #{pattern}."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state_code Value to be assigned
    def state_code=(state_code)
      if state_code.nil?
        fail ArgumentError, 'state_code cannot be nil'
      end

      pattern = Regexp.new(/[A-Z]{2}/)
      if state_code !~ pattern
        fail ArgumentError, "invalid value for \"state_code\", must conform to the pattern #{pattern}."
      end

      @state_code = state_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if country_code.nil?
        fail ArgumentError, 'country_code cannot be nil'
      end

      pattern = Regexp.new(/[A-Z]{2}/)
      if country_code !~ pattern
        fail ArgumentError, "invalid value for \"country_code\", must conform to the pattern #{pattern}."
      end

      @country_code = country_code
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if postal_code.nil?
        fail ArgumentError, 'postal_code cannot be nil'
      end

      if postal_code.to_s.length > 5
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 5.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if postal_code !~ pattern
        fail ArgumentError, "invalid value for \"postal_code\", must conform to the pattern #{pattern}."
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      if phone_number.nil?
        fail ArgumentError, 'phone_number cannot be nil'
      end

      pattern = Regexp.new(/[0-9]{10}/)
      if phone_number !~ pattern
        fail ArgumentError, "invalid value for \"phone_number\", must conform to the pattern #{pattern}."
      end

      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_number Value to be assigned
    def reference_number=(reference_number)
      if reference_number.nil?
        fail ArgumentError, 'reference_number cannot be nil'
      end

      if reference_number.to_s.length > 19
        fail ArgumentError, 'invalid value for "reference_number", the character length must be smaller than or equal to 19.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if reference_number !~ pattern
        fail ArgumentError, "invalid value for \"reference_number\", must conform to the pattern #{pattern}."
      end

      @reference_number = reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] account_number Value to be assigned
    def account_number=(account_number)
      if !account_number.nil? && account_number.to_s.length > 19
        fail ArgumentError, 'invalid value for "account_number", the character length must be smaller than or equal to 19.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if !account_number.nil? && account_number !~ pattern
        fail ArgumentError, "invalid value for \"account_number\", must conform to the pattern #{pattern}."
      end

      @account_number = account_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          street_address == o.street_address &&
          city == o.city &&
          state_code == o.state_code &&
          country_code == o.country_code &&
          postal_code == o.postal_code &&
          phone_number == o.phone_number &&
          reference_number == o.reference_number &&
          account_number == o.account_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, street_address, city, state_code, country_code, postal_code, phone_number, reference_number, account_number].hash
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
