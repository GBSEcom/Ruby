=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.9.1.20191223.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Request to create sale transaction using China PnR.
  class ChinaPnRSaleTransaction < PrimaryTransaction
    # Object name of the primary transaction request.
    attr_accessor :request_type

    attr_accessor :transaction_amount

    # An optional outlet ID for clients that support multiple stores in the same app.
    attr_accessor :store_id

    # The unique merchant transaction ID from the request header, if supplied.
    attr_accessor :merchant_transaction_id

    attr_accessor :transaction_origin

    attr_accessor :order

    attr_accessor :payment_method

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'request_type' => :'requestType',
        :'transaction_amount' => :'transactionAmount',
        :'store_id' => :'storeId',
        :'merchant_transaction_id' => :'merchantTransactionId',
        :'transaction_origin' => :'transactionOrigin',
        :'order' => :'order',
        :'payment_method' => :'paymentMethod'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'request_type' => :'String',
        :'transaction_amount' => :'Amount',
        :'store_id' => :'String',
        :'merchant_transaction_id' => :'String',
        :'transaction_origin' => :'TransactionOrigin',
        :'order' => :'Order',
        :'payment_method' => :'ChinaDomesticPaymentMethod'
      }
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'ChinaPnRSaleTransactionAllOf',
      :'PrimaryTransaction'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ChinaPnRSaleTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ChinaPnRSaleTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'request_type')
        self.request_type = attributes[:'request_type']
      end

      if attributes.key?(:'transaction_amount')
        self.transaction_amount = attributes[:'transaction_amount']
      end

      if attributes.key?(:'store_id')
        self.store_id = attributes[:'store_id']
      end

      if attributes.key?(:'merchant_transaction_id')
        self.merchant_transaction_id = attributes[:'merchant_transaction_id']
      end

      if attributes.key?(:'transaction_origin')
        self.transaction_origin = attributes[:'transaction_origin']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if !@store_id.nil? && @store_id.to_s.length > 20
        invalid_properties.push('invalid value for "store_id", the character length must be smaller than or equal to 20.')
      end

      if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
        invalid_properties.push('invalid value for "merchant_transaction_id", the character length must be smaller than or equal to 40.')
      end

      if @payment_method.nil?
        invalid_properties.push('invalid value for "payment_method", payment_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
      return false if @payment_method.nil?
      true && super
    end

    # Custom attribute writer method with validation
    # @param [Object] store_id Value to be assigned
    def store_id=(store_id)
      if !store_id.nil? && store_id.to_s.length > 20
        fail ArgumentError, 'invalid value for "store_id", the character length must be smaller than or equal to 20.'
      end

      @store_id = store_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_transaction_id Value to be assigned
    def merchant_transaction_id=(merchant_transaction_id)
      if !merchant_transaction_id.nil? && merchant_transaction_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "merchant_transaction_id", the character length must be smaller than or equal to 40.'
      end

      @merchant_transaction_id = merchant_transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          request_type == o.request_type &&
          transaction_amount == o.transaction_amount &&
          store_id == o.store_id &&
          merchant_transaction_id == o.merchant_transaction_id &&
          transaction_origin == o.transaction_origin &&
          order == o.order &&
          payment_method == o.payment_method && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [request_type, transaction_amount, store_id, merchant_transaction_id, transaction_origin, order, payment_method].hash
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
      super(attributes)
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
      hash = super
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
