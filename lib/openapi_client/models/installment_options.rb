=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Indicates that the total sum payable is divided for payment at successive fixed times.
  class InstallmentOptions
    # Number of installments for a sale transaction if the customer pays the total amount in multiple transactions.
    attr_accessor :number_of_installments

    # Indicates whether the installment interest amount has been applied.
    attr_accessor :installments_interest

    # The number of months the first installment payment will be delayed.
    attr_accessor :installment_delay_months

    # The type of recurring payment.
    attr_accessor :recurring_type

    # Indicates if the merchant supports merchant advice code (MAC) in order to receive table 55 code for a declined recurring transaction.
    attr_accessor :merchant_advice_code_supported

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
        :'number_of_installments' => :'numberOfInstallments',
        :'installments_interest' => :'installmentsInterest',
        :'installment_delay_months' => :'installmentDelayMonths',
        :'recurring_type' => :'recurringType',
        :'merchant_advice_code_supported' => :'merchantAdviceCodeSupported'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'number_of_installments' => :'Integer',
        :'installments_interest' => :'Boolean',
        :'installment_delay_months' => :'Integer',
        :'recurring_type' => :'String',
        :'merchant_advice_code_supported' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::InstallmentOptions` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::InstallmentOptions`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'number_of_installments')
        self.number_of_installments = attributes[:'number_of_installments']
      end

      if attributes.key?(:'installments_interest')
        self.installments_interest = attributes[:'installments_interest']
      end

      if attributes.key?(:'installment_delay_months')
        self.installment_delay_months = attributes[:'installment_delay_months']
      end

      if attributes.key?(:'recurring_type')
        self.recurring_type = attributes[:'recurring_type']
      end

      if attributes.key?(:'merchant_advice_code_supported')
        self.merchant_advice_code_supported = attributes[:'merchant_advice_code_supported']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@number_of_installments.nil? && @number_of_installments > 99
        invalid_properties.push('invalid value for "number_of_installments", must be smaller than or equal to 99.')
      end

      if !@number_of_installments.nil? && @number_of_installments < 1
        invalid_properties.push('invalid value for "number_of_installments", must be greater than or equal to 1.')
      end

      if !@installment_delay_months.nil? && @installment_delay_months > 99
        invalid_properties.push('invalid value for "installment_delay_months", must be smaller than or equal to 99.')
      end

      if !@installment_delay_months.nil? && @installment_delay_months < 1
        invalid_properties.push('invalid value for "installment_delay_months", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@number_of_installments.nil? && @number_of_installments > 99
      return false if !@number_of_installments.nil? && @number_of_installments < 1
      return false if !@installment_delay_months.nil? && @installment_delay_months > 99
      return false if !@installment_delay_months.nil? && @installment_delay_months < 1
      recurring_type_validator = EnumAttributeValidator.new('String', ["FIRST", "REPEAT", "STANDING_INSTRUCTION"])
      return false unless recurring_type_validator.valid?(@recurring_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_installments Value to be assigned
    def number_of_installments=(number_of_installments)
      if !number_of_installments.nil? && number_of_installments > 99
        fail ArgumentError, 'invalid value for "number_of_installments", must be smaller than or equal to 99.'
      end

      if !number_of_installments.nil? && number_of_installments < 1
        fail ArgumentError, 'invalid value for "number_of_installments", must be greater than or equal to 1.'
      end

      @number_of_installments = number_of_installments
    end

    # Custom attribute writer method with validation
    # @param [Object] installment_delay_months Value to be assigned
    def installment_delay_months=(installment_delay_months)
      if !installment_delay_months.nil? && installment_delay_months > 99
        fail ArgumentError, 'invalid value for "installment_delay_months", must be smaller than or equal to 99.'
      end

      if !installment_delay_months.nil? && installment_delay_months < 1
        fail ArgumentError, 'invalid value for "installment_delay_months", must be greater than or equal to 1.'
      end

      @installment_delay_months = installment_delay_months
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring_type Object to be assigned
    def recurring_type=(recurring_type)
      validator = EnumAttributeValidator.new('String', ["FIRST", "REPEAT", "STANDING_INSTRUCTION"])
      unless validator.valid?(recurring_type)
        fail ArgumentError, "invalid value for \"recurring_type\", must be one of #{validator.allowable_values}."
      end
      @recurring_type = recurring_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          number_of_installments == o.number_of_installments &&
          installments_interest == o.installments_interest &&
          installment_delay_months == o.installment_delay_months &&
          recurring_type == o.recurring_type &&
          merchant_advice_code_supported == o.merchant_advice_code_supported
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [number_of_installments, installments_interest, installment_delay_months, recurring_type, merchant_advice_code_supported].hash
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
