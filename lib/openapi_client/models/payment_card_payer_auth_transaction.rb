=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

OpenAPI spec version: 6.6.0.20190329.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Request to create payer auth primary transaction.
  class PaymentCardPayerAuthTransaction
    # Object name of the primary transaction request.
    attr_accessor :request_type

    # An optional outlet ID for clients that support multiple stores in the same app.
    attr_accessor :store_id

    # The unique merchant transaction ID from the request header, if supplied.
    attr_accessor :merchant_transaction_id

    attr_accessor :transaction_amount

    attr_accessor :transaction_origin

    attr_accessor :order

    attr_accessor :payment_method

    attr_accessor :currency_conversion

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'request_type' => :'requestType',
        :'store_id' => :'storeId',
        :'merchant_transaction_id' => :'merchantTransactionId',
        :'transaction_amount' => :'transactionAmount',
        :'transaction_origin' => :'transactionOrigin',
        :'order' => :'order',
        :'payment_method' => :'paymentMethod',
        :'currency_conversion' => :'currencyConversion'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'request_type' => :'String',
        :'store_id' => :'String',
        :'merchant_transaction_id' => :'String',
        :'transaction_amount' => :'Amount',
        :'transaction_origin' => :'TransactionOrigin',
        :'order' => :'Order',
        :'payment_method' => :'PaymentCardPaymentMethod',
        :'currency_conversion' => :'CurrencyConversion'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'requestType')
        self.request_type = attributes[:'requestType']
      end

      if attributes.has_key?(:'storeId')
        self.store_id = attributes[:'storeId']
      end

      if attributes.has_key?(:'merchantTransactionId')
        self.merchant_transaction_id = attributes[:'merchantTransactionId']
      end

      if attributes.has_key?(:'transactionAmount')
        self.transaction_amount = attributes[:'transactionAmount']
      end

      if attributes.has_key?(:'transactionOrigin')
        self.transaction_origin = attributes[:'transactionOrigin']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'currencyConversion')
        self.currency_conversion = attributes[:'currencyConversion']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @request_type.nil?
        invalid_properties.push('invalid value for "request_type", request_type cannot be nil.')
      end

      if !@store_id.nil? && @store_id.to_s.length > 20
        invalid_properties.push('invalid value for "store_id", the character length must be smaller than or equal to 20.')
      end

      if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
        invalid_properties.push('invalid value for "merchant_transaction_id", the character length must be smaller than or equal to 40.')
      end

      if @transaction_amount.nil?
        invalid_properties.push('invalid value for "transaction_amount", transaction_amount cannot be nil.')
      end

      if @payment_method.nil?
        invalid_properties.push('invalid value for "payment_method", payment_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @request_type.nil?
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
      return false if @transaction_amount.nil?
      return false if @payment_method.nil?
      true
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
          store_id == o.store_id &&
          merchant_transaction_id == o.merchant_transaction_id &&
          transaction_amount == o.transaction_amount &&
          transaction_origin == o.transaction_origin &&
          order == o.order &&
          payment_method == o.payment_method &&
          currency_conversion == o.currency_conversion
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [request_type, store_id, merchant_transaction_id, transaction_amount, transaction_origin, order, payment_method, currency_conversion].hash
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
