=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # The payment object for China-domestic transactions. Use this to populate all china domestic payment method details.
  class ChinaDomestic
    # Use this to indicate the product code according to the product category list.
    attr_accessor :product_code

    # The quantity.
    attr_accessor :product_quantity

    # Rate amount in 3 decimal 12 bytes total digit.
    attr_accessor :product_price

    # The product description.
    attr_accessor :product_description

    # Use this to indicate the product code according to the product category list.
    attr_accessor :redirect_url

    # Use this to limit card functions to debit cards.
    attr_accessor :limit_card_function_to_debit

    # Use this to indicate the CUP customer ID if known.
    attr_accessor :customer_id

    # Use this to indicate the CUP bank ID if known.
    attr_accessor :bank_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'product_code' => :'productCode',
        :'product_quantity' => :'productQuantity',
        :'product_price' => :'productPrice',
        :'product_description' => :'productDescription',
        :'redirect_url' => :'redirectURL',
        :'limit_card_function_to_debit' => :'limitCardFunctionToDebit',
        :'customer_id' => :'customerId',
        :'bank_id' => :'bankId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'product_code' => :'String',
        :'product_quantity' => :'Integer',
        :'product_price' => :'Float',
        :'product_description' => :'String',
        :'redirect_url' => :'String',
        :'limit_card_function_to_debit' => :'BOOLEAN',
        :'customer_id' => :'String',
        :'bank_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'productCode')
        self.product_code = attributes[:'productCode']
      end

      if attributes.has_key?(:'productQuantity')
        self.product_quantity = attributes[:'productQuantity']
      end

      if attributes.has_key?(:'productPrice')
        self.product_price = attributes[:'productPrice']
      end

      if attributes.has_key?(:'productDescription')
        self.product_description = attributes[:'productDescription']
      end

      if attributes.has_key?(:'redirectURL')
        self.redirect_url = attributes[:'redirectURL']
      end

      if attributes.has_key?(:'limitCardFunctionToDebit')
        self.limit_card_function_to_debit = attributes[:'limitCardFunctionToDebit']
      end

      if attributes.has_key?(:'customerId')
        self.customer_id = attributes[:'customerId']
      end

      if attributes.has_key?(:'bankId')
        self.bank_id = attributes[:'bankId']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @product_code.nil?
        invalid_properties.push('invalid value for "product_code", product_code cannot be nil.')
      end

      if @product_code.to_s.length > 32
        invalid_properties.push('invalid value for "product_code", the character length must be smaller than or equal to 32.')
      end

      if @product_quantity.nil?
        invalid_properties.push('invalid value for "product_quantity", product_quantity cannot be nil.')
      end

      if @product_quantity < 1
        invalid_properties.push('invalid value for "product_quantity", must be greater than or equal to 1.')
      end

      if @product_price.nil?
        invalid_properties.push('invalid value for "product_price", product_price cannot be nil.')
      end

      if @product_description.nil?
        invalid_properties.push('invalid value for "product_description", product_description cannot be nil.')
      end

      if @product_description.to_s.length > 100
        invalid_properties.push('invalid value for "product_description", the character length must be smaller than or equal to 100.')
      end

      if @redirect_url.nil?
        invalid_properties.push('invalid value for "redirect_url", redirect_url cannot be nil.')
      end

      if @redirect_url.to_s.length > 1024
        invalid_properties.push('invalid value for "redirect_url", the character length must be smaller than or equal to 1024.')
      end

      if !@customer_id.nil? && @customer_id.to_s.length > 32
        invalid_properties.push('invalid value for "customer_id", the character length must be smaller than or equal to 32.')
      end

      if !@bank_id.nil? && @bank_id.to_s.length > 8
        invalid_properties.push('invalid value for "bank_id", the character length must be smaller than or equal to 8.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product_code.nil?
      return false if @product_code.to_s.length > 32
      return false if @product_quantity.nil?
      return false if @product_quantity < 1
      return false if @product_price.nil?
      return false if @product_description.nil?
      return false if @product_description.to_s.length > 100
      return false if @redirect_url.nil?
      return false if @redirect_url.to_s.length > 1024
      return false if !@customer_id.nil? && @customer_id.to_s.length > 32
      return false if !@bank_id.nil? && @bank_id.to_s.length > 8
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] product_code Value to be assigned
    def product_code=(product_code)
      if product_code.nil?
        fail ArgumentError, 'product_code cannot be nil'
      end

      if product_code.to_s.length > 32
        fail ArgumentError, 'invalid value for "product_code", the character length must be smaller than or equal to 32.'
      end

      @product_code = product_code
    end

    # Custom attribute writer method with validation
    # @param [Object] product_quantity Value to be assigned
    def product_quantity=(product_quantity)
      if product_quantity.nil?
        fail ArgumentError, 'product_quantity cannot be nil'
      end

      if product_quantity < 1
        fail ArgumentError, 'invalid value for "product_quantity", must be greater than or equal to 1.'
      end

      @product_quantity = product_quantity
    end

    # Custom attribute writer method with validation
    # @param [Object] product_description Value to be assigned
    def product_description=(product_description)
      if product_description.nil?
        fail ArgumentError, 'product_description cannot be nil'
      end

      if product_description.to_s.length > 100
        fail ArgumentError, 'invalid value for "product_description", the character length must be smaller than or equal to 100.'
      end

      @product_description = product_description
    end

    # Custom attribute writer method with validation
    # @param [Object] redirect_url Value to be assigned
    def redirect_url=(redirect_url)
      if redirect_url.nil?
        fail ArgumentError, 'redirect_url cannot be nil'
      end

      if redirect_url.to_s.length > 1024
        fail ArgumentError, 'invalid value for "redirect_url", the character length must be smaller than or equal to 1024.'
      end

      @redirect_url = redirect_url
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_id Value to be assigned
    def customer_id=(customer_id)
      if !customer_id.nil? && customer_id.to_s.length > 32
        fail ArgumentError, 'invalid value for "customer_id", the character length must be smaller than or equal to 32.'
      end

      @customer_id = customer_id
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_id Value to be assigned
    def bank_id=(bank_id)
      if !bank_id.nil? && bank_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "bank_id", the character length must be smaller than or equal to 8.'
      end

      @bank_id = bank_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          product_code == o.product_code &&
          product_quantity == o.product_quantity &&
          product_price == o.product_price &&
          product_description == o.product_description &&
          redirect_url == o.redirect_url &&
          limit_card_function_to_debit == o.limit_card_function_to_debit &&
          customer_id == o.customer_id &&
          bank_id == o.bank_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [product_code, product_quantity, product_price, product_description, redirect_url, limit_card_function_to_debit, customer_id, bank_id].hash
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
