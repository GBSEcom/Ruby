=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.12.0.20200605.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Additional transaction details for transaction response.
  class AdditionalTransactionDetails
    # Comment for the payment.
    attr_accessor :comments

    # Invoice number.
    attr_accessor :invoice_number

    # Purchase order number.
    attr_accessor :purchase_order_number

    # The type of debit disbursement transaction.
    attr_accessor :disbursement_trans_type

    # The wallet provider type.
    attr_accessor :wallet_provider

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
        :'comments' => :'comments',
        :'invoice_number' => :'invoiceNumber',
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'disbursement_trans_type' => :'disbursementTransType',
        :'wallet_provider' => :'walletProvider'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'comments' => :'String',
        :'invoice_number' => :'String',
        :'purchase_order_number' => :'String',
        :'disbursement_trans_type' => :'String',
        :'wallet_provider' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::AdditionalTransactionDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::AdditionalTransactionDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'purchase_order_number')
        self.purchase_order_number = attributes[:'purchase_order_number']
      end

      if attributes.key?(:'disbursement_trans_type')
        self.disbursement_trans_type = attributes[:'disbursement_trans_type']
      end

      if attributes.key?(:'wallet_provider')
        self.wallet_provider = attributes[:'wallet_provider']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@comments.nil? && @comments.to_s.length > 1024
        invalid_properties.push('invalid value for "comments", the character length must be smaller than or equal to 1024.')
      end

      if !@invoice_number.nil? && @invoice_number.to_s.length > 48
        invalid_properties.push('invalid value for "invoice_number", the character length must be smaller than or equal to 48.')
      end

      if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 128
        invalid_properties.push('invalid value for "purchase_order_number", the character length must be smaller than or equal to 128.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@comments.nil? && @comments.to_s.length > 1024
      return false if !@invoice_number.nil? && @invoice_number.to_s.length > 48
      return false if !@purchase_order_number.nil? && @purchase_order_number.to_s.length > 128
      disbursement_trans_type_validator = EnumAttributeValidator.new('String', ["FUNDING", "DISBURSEMENT"])
      return false unless disbursement_trans_type_validator.valid?(@disbursement_trans_type)
      wallet_provider_validator = EnumAttributeValidator.new('String', ["GOOGLE_PAY", "APPLE_PAY", "SAMSUNG_PAY", "MASTERPASS"])
      return false unless wallet_provider_validator.valid?(@wallet_provider)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] comments Value to be assigned
    def comments=(comments)
      if !comments.nil? && comments.to_s.length > 1024
        fail ArgumentError, 'invalid value for "comments", the character length must be smaller than or equal to 1024.'
      end

      @comments = comments
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_number Value to be assigned
    def invoice_number=(invoice_number)
      if !invoice_number.nil? && invoice_number.to_s.length > 48
        fail ArgumentError, 'invalid value for "invoice_number", the character length must be smaller than or equal to 48.'
      end

      @invoice_number = invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_number Value to be assigned
    def purchase_order_number=(purchase_order_number)
      if !purchase_order_number.nil? && purchase_order_number.to_s.length > 128
        fail ArgumentError, 'invalid value for "purchase_order_number", the character length must be smaller than or equal to 128.'
      end

      @purchase_order_number = purchase_order_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disbursement_trans_type Object to be assigned
    def disbursement_trans_type=(disbursement_trans_type)
      validator = EnumAttributeValidator.new('String', ["FUNDING", "DISBURSEMENT"])
      unless validator.valid?(disbursement_trans_type)
        fail ArgumentError, "invalid value for \"disbursement_trans_type\", must be one of #{validator.allowable_values}."
      end
      @disbursement_trans_type = disbursement_trans_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wallet_provider Object to be assigned
    def wallet_provider=(wallet_provider)
      validator = EnumAttributeValidator.new('String', ["GOOGLE_PAY", "APPLE_PAY", "SAMSUNG_PAY", "MASTERPASS"])
      unless validator.valid?(wallet_provider)
        fail ArgumentError, "invalid value for \"wallet_provider\", must be one of #{validator.allowable_values}."
      end
      @wallet_provider = wallet_provider
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          comments == o.comments &&
          invoice_number == o.invoice_number &&
          purchase_order_number == o.purchase_order_number &&
          disbursement_trans_type == o.disbursement_trans_type &&
          wallet_provider == o.wallet_provider
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [comments, invoice_number, purchase_order_number, disbursement_trans_type, wallet_provider].hash
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
    def to_hash(attribute_map = self.class.attribute_map, openapi_nullable = self.class.openapi_nullable)
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
