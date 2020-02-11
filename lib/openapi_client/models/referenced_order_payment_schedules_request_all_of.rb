=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.9.1.20191223.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  class ReferencedOrderPaymentSchedulesRequestAllOf
    # Object name of the payment schedules request.
    attr_accessor :request_type

    # Store ID number.
    attr_accessor :store_id

    # Date of mandate signature.
    attr_accessor :start_date

    # Number of times the recurring payment will process.
    attr_accessor :number_of_payments

    # Number of failures that can be encountered before re-tries cease.
    attr_accessor :maximum_failures

    # Invoice number.
    attr_accessor :invoice_number

    # Purchase order number.
    attr_accessor :purchase_order_number

    attr_accessor :transaction_origin

    # Dynamic merchant name for the cardholder's statement.
    attr_accessor :dynamic_merchant_name

    attr_accessor :frequency

    attr_accessor :transaction_amount

    attr_accessor :client_locale

    # Client order ID if supplied by client.
    attr_accessor :order_id

    attr_accessor :billing

    attr_accessor :shipping

    # User supplied comments.
    attr_accessor :comments

    # Order ID used to create recurring payment from existing transaction.
    attr_accessor :referenced_order_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'request_type' => :'requestType',
        :'store_id' => :'storeId',
        :'start_date' => :'startDate',
        :'number_of_payments' => :'numberOfPayments',
        :'maximum_failures' => :'maximumFailures',
        :'invoice_number' => :'invoiceNumber',
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'transaction_origin' => :'transactionOrigin',
        :'dynamic_merchant_name' => :'dynamicMerchantName',
        :'frequency' => :'frequency',
        :'transaction_amount' => :'transactionAmount',
        :'client_locale' => :'clientLocale',
        :'order_id' => :'orderId',
        :'billing' => :'billing',
        :'shipping' => :'shipping',
        :'comments' => :'comments',
        :'referenced_order_id' => :'referencedOrderId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'request_type' => :'String',
        :'store_id' => :'String',
        :'start_date' => :'Date',
        :'number_of_payments' => :'Integer',
        :'maximum_failures' => :'Integer',
        :'invoice_number' => :'String',
        :'purchase_order_number' => :'String',
        :'transaction_origin' => :'TransactionOrigin',
        :'dynamic_merchant_name' => :'String',
        :'frequency' => :'Frequency',
        :'transaction_amount' => :'Amount',
        :'client_locale' => :'ClientLocale',
        :'order_id' => :'String',
        :'billing' => :'Billing',
        :'shipping' => :'Shipping',
        :'comments' => :'String',
        :'referenced_order_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ReferencedOrderPaymentSchedulesRequestAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ReferencedOrderPaymentSchedulesRequestAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'request_type')
        self.request_type = attributes[:'request_type']
      end

      if attributes.key?(:'store_id')
        self.store_id = attributes[:'store_id']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'number_of_payments')
        self.number_of_payments = attributes[:'number_of_payments']
      end

      if attributes.key?(:'maximum_failures')
        self.maximum_failures = attributes[:'maximum_failures']
      end

      if attributes.key?(:'invoice_number')
        self.invoice_number = attributes[:'invoice_number']
      end

      if attributes.key?(:'purchase_order_number')
        self.purchase_order_number = attributes[:'purchase_order_number']
      end

      if attributes.key?(:'transaction_origin')
        self.transaction_origin = attributes[:'transaction_origin']
      end

      if attributes.key?(:'dynamic_merchant_name')
        self.dynamic_merchant_name = attributes[:'dynamic_merchant_name']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'transaction_amount')
        self.transaction_amount = attributes[:'transaction_amount']
      end

      if attributes.key?(:'client_locale')
        self.client_locale = attributes[:'client_locale']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'billing')
        self.billing = attributes[:'billing']
      end

      if attributes.key?(:'shipping')
        self.shipping = attributes[:'shipping']
      end

      if attributes.key?(:'comments')
        self.comments = attributes[:'comments']
      end

      if attributes.key?(:'referenced_order_id')
        self.referenced_order_id = attributes[:'referenced_order_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@store_id.nil? && @store_id.to_s.length > 20
        invalid_properties.push('invalid value for "store_id", the character length must be smaller than or equal to 20.')
      end

      if !@number_of_payments.nil? && @number_of_payments > 999
        invalid_properties.push('invalid value for "number_of_payments", must be smaller than or equal to 999.')
      end

      if !@number_of_payments.nil? && @number_of_payments < 1
        invalid_properties.push('invalid value for "number_of_payments", must be greater than or equal to 1.')
      end

      if !@maximum_failures.nil? && @maximum_failures > 999
        invalid_properties.push('invalid value for "maximum_failures", must be smaller than or equal to 999.')
      end

      if !@maximum_failures.nil? && @maximum_failures < 1
        invalid_properties.push('invalid value for "maximum_failures", must be greater than or equal to 1.')
      end

      if @referenced_order_id.nil?
        invalid_properties.push('invalid value for "referenced_order_id", referenced_order_id cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @referenced_order_id !~ pattern
        invalid_properties.push("invalid value for \"referenced_order_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if !@number_of_payments.nil? && @number_of_payments > 999
      return false if !@number_of_payments.nil? && @number_of_payments < 1
      return false if !@maximum_failures.nil? && @maximum_failures > 999
      return false if !@maximum_failures.nil? && @maximum_failures < 1
      return false if @referenced_order_id.nil?
      return false if @referenced_order_id !~ Regexp.new(/^(?!\s*$).+/)
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
    # @param [Object] number_of_payments Value to be assigned
    def number_of_payments=(number_of_payments)
      if !number_of_payments.nil? && number_of_payments > 999
        fail ArgumentError, 'invalid value for "number_of_payments", must be smaller than or equal to 999.'
      end

      if !number_of_payments.nil? && number_of_payments < 1
        fail ArgumentError, 'invalid value for "number_of_payments", must be greater than or equal to 1.'
      end

      @number_of_payments = number_of_payments
    end

    # Custom attribute writer method with validation
    # @param [Object] maximum_failures Value to be assigned
    def maximum_failures=(maximum_failures)
      if !maximum_failures.nil? && maximum_failures > 999
        fail ArgumentError, 'invalid value for "maximum_failures", must be smaller than or equal to 999.'
      end

      if !maximum_failures.nil? && maximum_failures < 1
        fail ArgumentError, 'invalid value for "maximum_failures", must be greater than or equal to 1.'
      end

      @maximum_failures = maximum_failures
    end

    # Custom attribute writer method with validation
    # @param [Object] referenced_order_id Value to be assigned
    def referenced_order_id=(referenced_order_id)
      if referenced_order_id.nil?
        fail ArgumentError, 'referenced_order_id cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if referenced_order_id !~ pattern
        fail ArgumentError, "invalid value for \"referenced_order_id\", must conform to the pattern #{pattern}."
      end

      @referenced_order_id = referenced_order_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          request_type == o.request_type &&
          store_id == o.store_id &&
          start_date == o.start_date &&
          number_of_payments == o.number_of_payments &&
          maximum_failures == o.maximum_failures &&
          invoice_number == o.invoice_number &&
          purchase_order_number == o.purchase_order_number &&
          transaction_origin == o.transaction_origin &&
          dynamic_merchant_name == o.dynamic_merchant_name &&
          frequency == o.frequency &&
          transaction_amount == o.transaction_amount &&
          client_locale == o.client_locale &&
          order_id == o.order_id &&
          billing == o.billing &&
          shipping == o.shipping &&
          comments == o.comments &&
          referenced_order_id == o.referenced_order_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [request_type, store_id, start_date, number_of_payments, maximum_failures, invoice_number, purchase_order_number, transaction_origin, dynamic_merchant_name, frequency, transaction_amount, client_locale, order_id, billing, shipping, comments, referenced_order_id].hash
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
