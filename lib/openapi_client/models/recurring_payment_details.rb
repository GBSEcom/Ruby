=begin
#Payment Gateway API Specification.

#Payment Gateway API for payment processing. Version 6.4.0.20181018.001 

OpenAPI spec version: 6.4.0.20181018.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Details about existing gateway schedule.
  class RecurringPaymentDetails
    # Store ID number.
    attr_accessor :store_id

    # Purchase order number.
    attr_accessor :purchase_order_number

    # Invoice number.
    attr_accessor :invoice_number

    # Date recurring payment was created.
    attr_accessor :creation_date

    # Date of mandate signature.
    attr_accessor :start_date

    # Date of next transaction process attempt.
    attr_accessor :next_attempt_date

    attr_accessor :amount

    attr_accessor :payment_method

    attr_accessor :frequency

    # Number of times the recurring payment will process.
    attr_accessor :number_of_payments

    # Times the recurring payment has already run.
    attr_accessor :run_count

    # State of the recurring payment.
    attr_accessor :state

    # User supplied comments.
    attr_accessor :comments

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
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'invoice_number' => :'invoiceNumber',
        :'creation_date' => :'creationDate',
        :'start_date' => :'startDate',
        :'next_attempt_date' => :'nextAttemptDate',
        :'amount' => :'amount',
        :'payment_method' => :'paymentMethod',
        :'frequency' => :'frequency',
        :'number_of_payments' => :'numberOfPayments',
        :'run_count' => :'runCount',
        :'state' => :'state',
        :'comments' => :'comments'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'store_id' => :'String',
        :'purchase_order_number' => :'String',
        :'invoice_number' => :'String',
        :'creation_date' => :'String',
        :'start_date' => :'String',
        :'next_attempt_date' => :'String',
        :'amount' => :'Amount',
        :'payment_method' => :'PaymentMethod',
        :'frequency' => :'Frequency',
        :'number_of_payments' => :'Integer',
        :'run_count' => :'Integer',
        :'state' => :'String',
        :'comments' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'storeId')
        self.store_id = attributes[:'storeId']
      end

      if attributes.has_key?(:'purchaseOrderNumber')
        self.purchase_order_number = attributes[:'purchaseOrderNumber']
      end

      if attributes.has_key?(:'invoiceNumber')
        self.invoice_number = attributes[:'invoiceNumber']
      end

      if attributes.has_key?(:'creationDate')
        self.creation_date = attributes[:'creationDate']
      end

      if attributes.has_key?(:'startDate')
        self.start_date = attributes[:'startDate']
      end

      if attributes.has_key?(:'nextAttemptDate')
        self.next_attempt_date = attributes[:'nextAttemptDate']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.has_key?(:'numberOfPayments')
        self.number_of_payments = attributes[:'numberOfPayments']
      end

      if attributes.has_key?(:'runCount')
        self.run_count = attributes[:'runCount']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'comments')
        self.comments = attributes[:'comments']
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

      if !@run_count.nil? && @run_count > 999
        invalid_properties.push('invalid value for "run_count", must be smaller than or equal to 999.')
      end

      if !@run_count.nil? && @run_count < 0
        invalid_properties.push('invalid value for "run_count", must be greater than or equal to 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if !@number_of_payments.nil? && @number_of_payments > 999
      return false if !@number_of_payments.nil? && @number_of_payments < 1
      return false if !@run_count.nil? && @run_count > 999
      return false if !@run_count.nil? && @run_count < 0
      state_validator = EnumAttributeValidator.new('String', ['Installed', 'Inactivated', 'Cancelled'])
      return false unless state_validator.valid?(@state)
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
    # @param [Object] run_count Value to be assigned
    def run_count=(run_count)
      if !run_count.nil? && run_count > 999
        fail ArgumentError, 'invalid value for "run_count", must be smaller than or equal to 999.'
      end

      if !run_count.nil? && run_count < 0
        fail ArgumentError, 'invalid value for "run_count", must be greater than or equal to 0.'
      end

      @run_count = run_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ['Installed', 'Inactivated', 'Cancelled'])
      unless validator.valid?(state)
        fail ArgumentError, 'invalid value for "state", must be one of #{validator.allowable_values}.'
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          store_id == o.store_id &&
          purchase_order_number == o.purchase_order_number &&
          invoice_number == o.invoice_number &&
          creation_date == o.creation_date &&
          start_date == o.start_date &&
          next_attempt_date == o.next_attempt_date &&
          amount == o.amount &&
          payment_method == o.payment_method &&
          frequency == o.frequency &&
          number_of_payments == o.number_of_payments &&
          run_count == o.run_count &&
          state == o.state &&
          comments == o.comments
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [store_id, purchase_order_number, invoice_number, creation_date, start_date, next_attempt_date, amount, payment_method, frequency, number_of_payments, run_count, state, comments].hash
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
