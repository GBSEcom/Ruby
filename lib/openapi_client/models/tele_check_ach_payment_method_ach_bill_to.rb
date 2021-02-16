=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.1.0.20210122.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Billing details for telecheck transactions.
  class TeleCheckAchPaymentMethodAchBillTo
    # Customer billing first name.
    attr_accessor :first_name

    # Customer billing last name.
    attr_accessor :last_name

    # Customer billing address, first line.
    attr_accessor :address_one

    # Customer billing address, second line.
    attr_accessor :address_two

    # Customer billing city.
    attr_accessor :city

    # Customer billing state.
    attr_accessor :state

    # Customer billing zip code.
    attr_accessor :zip

    # Customer billing phone number.
    attr_accessor :phone

    # Customer billing email. Required if performing an ICA transaction.
    attr_accessor :email

    # ISO country code. Required if performing an ICA transaction.
    attr_accessor :country_code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'address_one' => :'addressOne',
        :'address_two' => :'addressTwo',
        :'city' => :'city',
        :'state' => :'state',
        :'zip' => :'zip',
        :'phone' => :'phone',
        :'email' => :'email',
        :'country_code' => :'countryCode'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'address_one' => :'String',
        :'address_two' => :'String',
        :'city' => :'String',
        :'state' => :'String',
        :'zip' => :'String',
        :'phone' => :'String',
        :'email' => :'String',
        :'country_code' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::TeleCheckAchPaymentMethodAchBillTo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::TeleCheckAchPaymentMethodAchBillTo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'address_one')
        self.address_one = attributes[:'address_one']
      end

      if attributes.key?(:'address_two')
        self.address_two = attributes[:'address_two']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'country_code')
        self.country_code = attributes[:'country_code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@first_name.nil? && @first_name.to_s.length > 30
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 30.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !@first_name.nil? && @first_name !~ pattern
        invalid_properties.push("invalid value for \"first_name\", must conform to the pattern #{pattern}.")
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @last_name.to_s.length > 30
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 30.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if @last_name !~ pattern
        invalid_properties.push("invalid value for \"last_name\", must conform to the pattern #{pattern}.")
      end

      if @address_one.nil?
        invalid_properties.push('invalid value for "address_one", address_one cannot be nil.')
      end

      if @address_one.to_s.length > 50
        invalid_properties.push('invalid value for "address_one", the character length must be smaller than or equal to 50.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if @address_one !~ pattern
        invalid_properties.push("invalid value for \"address_one\", must conform to the pattern #{pattern}.")
      end

      if !@address_two.nil? && @address_two.to_s.length > 30
        invalid_properties.push('invalid value for "address_two", the character length must be smaller than or equal to 30.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !@address_two.nil? && @address_two !~ pattern
        invalid_properties.push("invalid value for \"address_two\", must conform to the pattern #{pattern}.")
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @city.to_s.length > 30
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 30.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if @city !~ pattern
        invalid_properties.push("invalid value for \"city\", must conform to the pattern #{pattern}.")
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @state.to_s.length > 2
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 2.')
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if @state !~ pattern
        invalid_properties.push("invalid value for \"state\", must conform to the pattern #{pattern}.")
      end

      if @zip.nil?
        invalid_properties.push('invalid value for "zip", zip cannot be nil.')
      end

      if @zip.to_s.length > 11
        invalid_properties.push('invalid value for "zip", the character length must be smaller than or equal to 11.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if @zip !~ pattern
        invalid_properties.push("invalid value for \"zip\", must conform to the pattern #{pattern}.")
      end

      if @phone.nil?
        invalid_properties.push('invalid value for "phone", phone cannot be nil.')
      end

      if @phone.to_s.length > 10
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 10.')
      end

      pattern = Regexp.new(/^[0-9]+$/)
      if @phone !~ pattern
        invalid_properties.push("invalid value for \"phone\", must conform to the pattern #{pattern}.")
      end

      if !@email.nil? && @email.to_s.length > 100
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !@email.nil? && @email !~ pattern
        invalid_properties.push("invalid value for \"email\", must conform to the pattern #{pattern}.")
      end

      if !@country_code.nil? && @country_code.to_s.length > 2
        invalid_properties.push('invalid value for "country_code", the character length must be smaller than or equal to 2.')
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if !@country_code.nil? && @country_code !~ pattern
        invalid_properties.push("invalid value for \"country_code\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@first_name.nil? && @first_name.to_s.length > 30
      return false if !@first_name.nil? && @first_name !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if @last_name.nil?
      return false if @last_name.to_s.length > 30
      return false if @last_name !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if @address_one.nil?
      return false if @address_one.to_s.length > 50
      return false if @address_one !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if !@address_two.nil? && @address_two.to_s.length > 30
      return false if !@address_two.nil? && @address_two !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if @city.nil?
      return false if @city.to_s.length > 30
      return false if @city !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if @state.nil?
      return false if @state.to_s.length > 2
      return false if @state !~ Regexp.new(/^[A-Z]{2}$/)
      return false if @zip.nil?
      return false if @zip.to_s.length > 11
      return false if @zip !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if @phone.nil?
      return false if @phone.to_s.length > 10
      return false if @phone !~ Regexp.new(/^[0-9]+$/)
      return false if !@email.nil? && @email.to_s.length > 100
      return false if !@email.nil? && @email !~ Regexp.new(/(?=.*[^\s])^[^|]+$/)
      return false if !@country_code.nil? && @country_code.to_s.length > 2
      return false if !@country_code.nil? && @country_code !~ Regexp.new(/^[A-Z]{2}$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 30.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !first_name.nil? && first_name !~ pattern
        fail ArgumentError, "invalid value for \"first_name\", must conform to the pattern #{pattern}."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if last_name.nil?
        fail ArgumentError, 'last_name cannot be nil'
      end

      if last_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 30.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if last_name !~ pattern
        fail ArgumentError, "invalid value for \"last_name\", must conform to the pattern #{pattern}."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] address_one Value to be assigned
    def address_one=(address_one)
      if address_one.nil?
        fail ArgumentError, 'address_one cannot be nil'
      end

      if address_one.to_s.length > 50
        fail ArgumentError, 'invalid value for "address_one", the character length must be smaller than or equal to 50.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if address_one !~ pattern
        fail ArgumentError, "invalid value for \"address_one\", must conform to the pattern #{pattern}."
      end

      @address_one = address_one
    end

    # Custom attribute writer method with validation
    # @param [Object] address_two Value to be assigned
    def address_two=(address_two)
      if !address_two.nil? && address_two.to_s.length > 30
        fail ArgumentError, 'invalid value for "address_two", the character length must be smaller than or equal to 30.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !address_two.nil? && address_two !~ pattern
        fail ArgumentError, "invalid value for \"address_two\", must conform to the pattern #{pattern}."
      end

      @address_two = address_two
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if city.nil?
        fail ArgumentError, 'city cannot be nil'
      end

      if city.to_s.length > 30
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 30.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if city !~ pattern
        fail ArgumentError, "invalid value for \"city\", must conform to the pattern #{pattern}."
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if state.nil?
        fail ArgumentError, 'state cannot be nil'
      end

      if state.to_s.length > 2
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 2.'
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if state !~ pattern
        fail ArgumentError, "invalid value for \"state\", must conform to the pattern #{pattern}."
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] zip Value to be assigned
    def zip=(zip)
      if zip.nil?
        fail ArgumentError, 'zip cannot be nil'
      end

      if zip.to_s.length > 11
        fail ArgumentError, 'invalid value for "zip", the character length must be smaller than or equal to 11.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if zip !~ pattern
        fail ArgumentError, "invalid value for \"zip\", must conform to the pattern #{pattern}."
      end

      @zip = zip
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if phone.nil?
        fail ArgumentError, 'phone cannot be nil'
      end

      if phone.to_s.length > 10
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 10.'
      end

      pattern = Regexp.new(/^[0-9]+$/)
      if phone !~ pattern
        fail ArgumentError, "invalid value for \"phone\", must conform to the pattern #{pattern}."
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if !email.nil? && email.to_s.length > 100
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/(?=.*[^\s])^[^|]+$/)
      if !email.nil? && email !~ pattern
        fail ArgumentError, "invalid value for \"email\", must conform to the pattern #{pattern}."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] country_code Value to be assigned
    def country_code=(country_code)
      if !country_code.nil? && country_code.to_s.length > 2
        fail ArgumentError, 'invalid value for "country_code", the character length must be smaller than or equal to 2.'
      end

      pattern = Regexp.new(/^[A-Z]{2}$/)
      if !country_code.nil? && country_code !~ pattern
        fail ArgumentError, "invalid value for \"country_code\", must conform to the pattern #{pattern}."
      end

      @country_code = country_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          address_one == o.address_one &&
          address_two == o.address_two &&
          city == o.city &&
          state == o.state &&
          zip == o.zip &&
          phone == o.phone &&
          email == o.email &&
          country_code == o.country_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, last_name, address_one, address_two, city, state, zip, phone, email, country_code].hash
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
