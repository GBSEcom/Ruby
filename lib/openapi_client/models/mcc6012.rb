=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # The group MCC (Merchant Category Code) 6012
  class Mcc6012
    # The date of birth of the cardholder (YYYYMMDD).
    attr_accessor :date_of_birth

    # The first six digits of the primary account number.
    attr_accessor :account_first6

    # The last four digits of the primary account number.
    attr_accessor :account_last4

    # The account number where the primary account number is not a card.
    attr_accessor :account_num

    # The postal code of the cardholder.
    attr_accessor :post_code

    # Surname or last name of the card holder.
    attr_accessor :surname

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date_of_birth' => :'dateOfBirth',
        :'account_first6' => :'accountFirst6',
        :'account_last4' => :'accountLast4',
        :'account_num' => :'accountNum',
        :'post_code' => :'postCode',
        :'surname' => :'surname'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date_of_birth' => :'String',
        :'account_first6' => :'String',
        :'account_last4' => :'String',
        :'account_num' => :'String',
        :'post_code' => :'String',
        :'surname' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Mcc6012` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Mcc6012`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'account_first6')
        self.account_first6 = attributes[:'account_first6']
      end

      if attributes.key?(:'account_last4')
        self.account_last4 = attributes[:'account_last4']
      end

      if attributes.key?(:'account_num')
        self.account_num = attributes[:'account_num']
      end

      if attributes.key?(:'post_code')
        self.post_code = attributes[:'post_code']
      end

      if attributes.key?(:'surname')
        self.surname = attributes[:'surname']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
        invalid_properties.push('invalid value for "date_of_birth", the character length must be smaller than or equal to 8.')
      end

      if !@account_first6.nil? && @account_first6.to_s.length > 6
        invalid_properties.push('invalid value for "account_first6", the character length must be smaller than or equal to 6.')
      end

      if !@account_last4.nil? && @account_last4.to_s.length > 4
        invalid_properties.push('invalid value for "account_last4", the character length must be smaller than or equal to 4.')
      end

      if !@account_num.nil? && @account_num.to_s.length > 50
        invalid_properties.push('invalid value for "account_num", the character length must be smaller than or equal to 50.')
      end

      if !@post_code.nil? && @post_code.to_s.length > 50
        invalid_properties.push('invalid value for "post_code", the character length must be smaller than or equal to 50.')
      end

      if !@surname.nil? && @surname.to_s.length > 100
        invalid_properties.push('invalid value for "surname", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@date_of_birth.nil? && @date_of_birth.to_s.length > 8
      return false if !@account_first6.nil? && @account_first6.to_s.length > 6
      return false if !@account_last4.nil? && @account_last4.to_s.length > 4
      return false if !@account_num.nil? && @account_num.to_s.length > 50
      return false if !@post_code.nil? && @post_code.to_s.length > 50
      return false if !@surname.nil? && @surname.to_s.length > 100
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] date_of_birth Value to be assigned
    def date_of_birth=(date_of_birth)
      if !date_of_birth.nil? && date_of_birth.to_s.length > 8
        fail ArgumentError, 'invalid value for "date_of_birth", the character length must be smaller than or equal to 8.'
      end

      @date_of_birth = date_of_birth
    end

    # Custom attribute writer method with validation
    # @param [Object] account_first6 Value to be assigned
    def account_first6=(account_first6)
      if !account_first6.nil? && account_first6.to_s.length > 6
        fail ArgumentError, 'invalid value for "account_first6", the character length must be smaller than or equal to 6.'
      end

      @account_first6 = account_first6
    end

    # Custom attribute writer method with validation
    # @param [Object] account_last4 Value to be assigned
    def account_last4=(account_last4)
      if !account_last4.nil? && account_last4.to_s.length > 4
        fail ArgumentError, 'invalid value for "account_last4", the character length must be smaller than or equal to 4.'
      end

      @account_last4 = account_last4
    end

    # Custom attribute writer method with validation
    # @param [Object] account_num Value to be assigned
    def account_num=(account_num)
      if !account_num.nil? && account_num.to_s.length > 50
        fail ArgumentError, 'invalid value for "account_num", the character length must be smaller than or equal to 50.'
      end

      @account_num = account_num
    end

    # Custom attribute writer method with validation
    # @param [Object] post_code Value to be assigned
    def post_code=(post_code)
      if !post_code.nil? && post_code.to_s.length > 50
        fail ArgumentError, 'invalid value for "post_code", the character length must be smaller than or equal to 50.'
      end

      @post_code = post_code
    end

    # Custom attribute writer method with validation
    # @param [Object] surname Value to be assigned
    def surname=(surname)
      if !surname.nil? && surname.to_s.length > 100
        fail ArgumentError, 'invalid value for "surname", the character length must be smaller than or equal to 100.'
      end

      @surname = surname
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date_of_birth == o.date_of_birth &&
          account_first6 == o.account_first6 &&
          account_last4 == o.account_last4 &&
          account_num == o.account_num &&
          post_code == o.post_code &&
          surname == o.surname
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date_of_birth, account_first6, account_last4, account_num, post_code, surname].hash
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
