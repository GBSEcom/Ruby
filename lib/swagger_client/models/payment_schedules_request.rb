=begin
#Payment Gateway API Specification

#Payment Gateway API for payment processing. 

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: unset

=end

require 'date'

module SwaggerClient
  # Request to create a gateway scheduler.
  class PaymentSchedulesRequest
    # Store ID number.
    attr_accessor :store_id

    # Order ID used to create recurring payment from existing transaction.
    attr_accessor :reference_order_id

    # Date of mandate signature.
    attr_accessor :start_date

    # Number of times the recurring payment will process.
    attr_accessor :number_of_payments

    # Number of failures that can be encountered before re-tries cease.
    attr_accessor :maximum_failures

    # Invoice number.
    attr_accessor :invoice_number

    # Purchase order number.
    attr_accessor :po_number

    # The source of the transaction. The possible values are ECI (if the order was received via email or Internet), MOTO (mail order / telephone order) and RETAIL (face to face).
    attr_accessor :transaction_origin

    # Dynamic merchant name for the cardholder‘s statement.
    attr_accessor :dynamic_merchant_name

    attr_accessor :frequency

    attr_accessor :payment_method

    attr_accessor :amount

    attr_accessor :client_locale

    # Client Order ID if supplied by client.
    attr_accessor :order_id

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
        :'store_id' => :'storeId',
        :'reference_order_id' => :'referenceOrderId',
        :'start_date' => :'startDate',
        :'number_of_payments' => :'numberOfPayments',
        :'maximum_failures' => :'maximumFailures',
        :'invoice_number' => :'invoiceNumber',
        :'po_number' => :'poNumber',
        :'transaction_origin' => :'transactionOrigin',
        :'dynamic_merchant_name' => :'dynamicMerchantName',
        :'frequency' => :'frequency',
        :'payment_method' => :'paymentMethod',
        :'amount' => :'amount',
        :'client_locale' => :'clientLocale',
        :'order_id' => :'orderId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'store_id' => :'String',
        :'reference_order_id' => :'String',
        :'start_date' => :'Date',
        :'number_of_payments' => :'Integer',
        :'maximum_failures' => :'Integer',
        :'invoice_number' => :'String',
        :'po_number' => :'String',
        :'transaction_origin' => :'String',
        :'dynamic_merchant_name' => :'String',
        :'frequency' => :'Frequency',
        :'payment_method' => :'PaymentMethod',
        :'amount' => :'Amount',
        :'client_locale' => :'ClientLocale',
        :'order_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'storeId')
        self.store_id = attributes[:'storeId']
      end

      if attributes.has_key?(:'referenceOrderId')
        self.reference_order_id = attributes[:'referenceOrderId']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'numberOfPayments')
        self.number_of_payments = attributes[:'numberOfPayments']
      end

      if attributes.has_key?(:'maximumFailures')
        self.maximum_failures = attributes[:'maximumFailures']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'poNumber')
        self.po_number = attributes[:'poNumber']
      end

      if attributes.has_key?(:'transactionOrigin')
        self.transaction_origin = attributes[:'transactionOrigin']
      end

      if attributes.has_key?(:'dynamicMerchantName')
        self.dynamic_merchant_name = attributes[:'dynamicMerchantName']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'clientLocale')
        self.client_locale = attributes[:'clientLocale']
      end

      if attributes.has_key?(:'orderId')
        self.order_id = attributes[:'orderId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@number_of_payments.nil? && @number_of_payments > 999
        invalid_properties.push("invalid value for 'number_of_payments', must be smaller than or equal to 999.")
      end

      if !@number_of_payments.nil? && @number_of_payments < 1
        invalid_properties.push("invalid value for 'number_of_payments', must be greater than or equal to 1.")
      end

      if !@maximum_failures.nil? && @maximum_failures > 999
        invalid_properties.push("invalid value for 'maximum_failures', must be smaller than or equal to 999.")
      end

      if !@maximum_failures.nil? && @maximum_failures < 1
        invalid_properties.push("invalid value for 'maximum_failures', must be greater than or equal to 1.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@number_of_payments.nil? && @number_of_payments > 999
      return false if !@number_of_payments.nil? && @number_of_payments < 1
      return false if !@maximum_failures.nil? && @maximum_failures > 999
      return false if !@maximum_failures.nil? && @maximum_failures < 1
      transaction_origin_validator = EnumAttributeValidator.new('String', ["ECI", "MOTO", "RETAIL"])
      return false unless transaction_origin_validator.valid?(@transaction_origin)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] number_of_payments Value to be assigned
    def number_of_payments=(number_of_payments)

      if !number_of_payments.nil? && number_of_payments > 999
        fail ArgumentError, "invalid value for 'number_of_payments', must be smaller than or equal to 999."
      end

      if !number_of_payments.nil? && number_of_payments < 1
        fail ArgumentError, "invalid value for 'number_of_payments', must be greater than or equal to 1."
      end

      @number_of_payments = number_of_payments
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_failures Value to be assigned
    def maximum_failures=(maximum_failures)

      if !maximum_failures.nil? && maximum_failures > 999
        fail ArgumentError, "invalid value for 'maximum_failures', must be smaller than or equal to 999."
      end

      if !maximum_failures.nil? && maximum_failures < 1
        fail ArgumentError, "invalid value for 'maximum_failures', must be greater than or equal to 1."
      end

      @maximum_failures = maximum_failures
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_origin Object to be assigned
    def transaction_origin=(transaction_origin)
      validator = EnumAttributeValidator.new('String', ["ECI", "MOTO", "RETAIL"])
      unless validator.valid?(transaction_origin)
        fail ArgumentError, "invalid value for 'transaction_origin', must be one of #{validator.allowable_values}."
      end
      @transaction_origin = transaction_origin
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          store_id == o.store_id &&
          reference_order_id == o.reference_order_id &&
          start_date == o.start_date &&
          number_of_payments == o.number_of_payments &&
          maximum_failures == o.maximum_failures &&
          invoice_number == o.invoice_number &&
          po_number == o.po_number &&
          transaction_origin == o.transaction_origin &&
          dynamic_merchant_name == o.dynamic_merchant_name &&
          frequency == o.frequency &&
          payment_method == o.payment_method &&
          amount == o.amount &&
          client_locale == o.client_locale &&
          order_id == o.order_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [store_id, reference_order_id, start_date, number_of_payments, maximum_failures, invoice_number, po_number, transaction_origin, dynamic_merchant_name, frequency, payment_method, amount, client_locale, order_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = SwaggerClient.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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