=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # The payment object for AliPay transactions. Use this to populate AliPay payment method details.
  class AliPay
    # Use this to indicate the type of machine-readable payment data for scanning.
    attr_accessor :payment_data_type

    # Use this to send payment-related information, such as customer identity ID.
    attr_accessor :payment_data

    # Use this to send an order title that shows up in the statement.
    attr_accessor :order_title

    # Use this to send order details that show up in the statement.
    attr_accessor :order_details

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
        :'payment_data_type' => :'paymentDataType',
        :'payment_data' => :'paymentData',
        :'order_title' => :'orderTitle',
        :'order_details' => :'orderDetails'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_data_type' => :'String',
        :'payment_data' => :'String',
        :'order_title' => :'String',
        :'order_details' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::AliPay` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::AliPay`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_data_type')
        self.payment_data_type = attributes[:'payment_data_type']
      end

      if attributes.key?(:'payment_data')
        self.payment_data = attributes[:'payment_data']
      end

      if attributes.key?(:'order_title')
        self.order_title = attributes[:'order_title']
      end

      if attributes.key?(:'order_details')
        self.order_details = attributes[:'order_details']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payment_data_type.nil?
        invalid_properties.push('invalid value for "payment_data_type", payment_data_type cannot be nil.')
      end

      if @payment_data.nil?
        invalid_properties.push('invalid value for "payment_data", payment_data cannot be nil.')
      end

      if @payment_data.to_s.length > 100
        invalid_properties.push('invalid value for "payment_data", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @payment_data !~ pattern
        invalid_properties.push("invalid value for \"payment_data\", must conform to the pattern #{pattern}.")
      end

      if @order_title.nil?
        invalid_properties.push('invalid value for "order_title", order_title cannot be nil.')
      end

      if @order_title.to_s.length > 100
        invalid_properties.push('invalid value for "order_title", the character length must be smaller than or equal to 100.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @order_title !~ pattern
        invalid_properties.push("invalid value for \"order_title\", must conform to the pattern #{pattern}.")
      end

      if @order_details.nil?
        invalid_properties.push('invalid value for "order_details", order_details cannot be nil.')
      end

      if @order_details.to_s.length > 1024
        invalid_properties.push('invalid value for "order_details", the character length must be smaller than or equal to 1024.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @order_details !~ pattern
        invalid_properties.push("invalid value for \"order_details\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_data_type.nil?
      payment_data_type_validator = EnumAttributeValidator.new('String', ["BARCODE", "QRCODE"])
      return false unless payment_data_type_validator.valid?(@payment_data_type)
      return false if @payment_data.nil?
      return false if @payment_data.to_s.length > 100
      return false if @payment_data !~ Regexp.new(/^(?!\s*$).+/)
      return false if @order_title.nil?
      return false if @order_title.to_s.length > 100
      return false if @order_title !~ Regexp.new(/^(?!\s*$).+/)
      return false if @order_details.nil?
      return false if @order_details.to_s.length > 1024
      return false if @order_details !~ Regexp.new(/^(?!\s*$).+/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_data_type Object to be assigned
    def payment_data_type=(payment_data_type)
      validator = EnumAttributeValidator.new('String', ["BARCODE", "QRCODE"])
      unless validator.valid?(payment_data_type)
        fail ArgumentError, "invalid value for \"payment_data_type\", must be one of #{validator.allowable_values}."
      end
      @payment_data_type = payment_data_type
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_data Value to be assigned
    def payment_data=(payment_data)
      if payment_data.nil?
        fail ArgumentError, 'payment_data cannot be nil'
      end

      if payment_data.to_s.length > 100
        fail ArgumentError, 'invalid value for "payment_data", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if payment_data !~ pattern
        fail ArgumentError, "invalid value for \"payment_data\", must conform to the pattern #{pattern}."
      end

      @payment_data = payment_data
    end

    # Custom attribute writer method with validation
    # @param [Object] order_title Value to be assigned
    def order_title=(order_title)
      if order_title.nil?
        fail ArgumentError, 'order_title cannot be nil'
      end

      if order_title.to_s.length > 100
        fail ArgumentError, 'invalid value for "order_title", the character length must be smaller than or equal to 100.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if order_title !~ pattern
        fail ArgumentError, "invalid value for \"order_title\", must conform to the pattern #{pattern}."
      end

      @order_title = order_title
    end

    # Custom attribute writer method with validation
    # @param [Object] order_details Value to be assigned
    def order_details=(order_details)
      if order_details.nil?
        fail ArgumentError, 'order_details cannot be nil'
      end

      if order_details.to_s.length > 1024
        fail ArgumentError, 'invalid value for "order_details", the character length must be smaller than or equal to 1024.'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if order_details !~ pattern
        fail ArgumentError, "invalid value for \"order_details\", must conform to the pattern #{pattern}."
      end

      @order_details = order_details
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_data_type == o.payment_data_type &&
          payment_data == o.payment_data &&
          order_title == o.order_title &&
          order_details == o.order_details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_data_type, payment_data, order_title, order_details].hash
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
