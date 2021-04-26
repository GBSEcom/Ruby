=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.2.0.20210406.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Common object for primary and secondary payment request responses.
  class TransactionResponse
    # Echoes back the value in the request header for tracking.
    attr_accessor :client_request_id

    # Request identifier in API, can be used to request logs from the support team.
    attr_accessor :api_trace_id

    attr_accessor :response_type

    # The response transaction ID.
    attr_accessor :ipg_transaction_id

    # Note - Client Order ID if supplied by client. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM).
    attr_accessor :order_id

    attr_accessor :transaction_type

    attr_accessor :payment_token

    attr_accessor :transaction_origin

    attr_accessor :payment_method_details

    # Country of the card issuer.
    attr_accessor :country

    # The terminal that is processing the transaction.
    attr_accessor :terminal_id

    # The unique (on Acquirer level) mechant ID. Usually this value has been chosen from the merchant itself and will be used in communication with the endpoint.
    attr_accessor :merchant_id

    # The unique merchant transaction ID from the request header, if supplied.
    attr_accessor :merchant_transaction_id

    # The transaction time in seconds since epoch.
    attr_accessor :transaction_time

    attr_accessor :approved_amount

    # Represents the status of a transaction immediately following the original processing request. This value is not stored for the transaction and is only available in the response when the transaction is processed. TransactionStatus is not returned on either the transaction inquiry or on the order inquiry.
    attr_accessor :transaction_status

    # Shows the state of the current transaction.
    attr_accessor :transaction_state

    attr_accessor :secure3d_response

    # The endpoint redirection URL.
    attr_accessor :redirect_url

    attr_accessor :authentication_response

    # The transaction ID received from schemes for the initial transaction of card on file flows.
    attr_accessor :scheme_transaction_id

    attr_accessor :processor

    attr_accessor :additional_details

    attr_accessor :account_updater_response

    attr_accessor :ach_response

    attr_accessor :currency_conversion_response

    # Steps to be performed by the payer.
    attr_accessor :steps

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
        :'client_request_id' => :'clientRequestId',
        :'api_trace_id' => :'apiTraceId',
        :'response_type' => :'responseType',
        :'ipg_transaction_id' => :'ipgTransactionId',
        :'order_id' => :'orderId',
        :'transaction_type' => :'transactionType',
        :'payment_token' => :'paymentToken',
        :'transaction_origin' => :'transactionOrigin',
        :'payment_method_details' => :'paymentMethodDetails',
        :'country' => :'country',
        :'terminal_id' => :'terminalId',
        :'merchant_id' => :'merchantId',
        :'merchant_transaction_id' => :'merchantTransactionId',
        :'transaction_time' => :'transactionTime',
        :'approved_amount' => :'approvedAmount',
        :'transaction_status' => :'transactionStatus',
        :'transaction_state' => :'transactionState',
        :'secure3d_response' => :'secure3dResponse',
        :'redirect_url' => :'redirectURL',
        :'authentication_response' => :'authenticationResponse',
        :'scheme_transaction_id' => :'schemeTransactionId',
        :'processor' => :'processor',
        :'additional_details' => :'additionalDetails',
        :'account_updater_response' => :'accountUpdaterResponse',
        :'ach_response' => :'achResponse',
        :'currency_conversion_response' => :'currencyConversionResponse',
        :'steps' => :'steps'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'client_request_id' => :'String',
        :'api_trace_id' => :'String',
        :'response_type' => :'ResponseType',
        :'ipg_transaction_id' => :'String',
        :'order_id' => :'String',
        :'transaction_type' => :'TransactionType',
        :'payment_token' => :'PaymentTokenDetails',
        :'transaction_origin' => :'TransactionOrigin',
        :'payment_method_details' => :'PaymentMethodDetails',
        :'country' => :'String',
        :'terminal_id' => :'String',
        :'merchant_id' => :'String',
        :'merchant_transaction_id' => :'String',
        :'transaction_time' => :'Integer',
        :'approved_amount' => :'Amount',
        :'transaction_status' => :'String',
        :'transaction_state' => :'String',
        :'secure3d_response' => :'Secure3dResponse',
        :'redirect_url' => :'String',
        :'authentication_response' => :'Secure3DAuthenticationResponse',
        :'scheme_transaction_id' => :'String',
        :'processor' => :'ProcessorData',
        :'additional_details' => :'AdditionalTransactionDetails',
        :'account_updater_response' => :'AccountUpdaterResponse',
        :'ach_response' => :'AchResponse',
        :'currency_conversion_response' => :'CurrencyConversionResponse',
        :'steps' => :'Array<PaymentStepRequest>'
      }
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'BasicResponse'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::TransactionResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::TransactionResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'client_request_id')
        self.client_request_id = attributes[:'client_request_id']
      end

      if attributes.key?(:'api_trace_id')
        self.api_trace_id = attributes[:'api_trace_id']
      end

      if attributes.key?(:'response_type')
        self.response_type = attributes[:'response_type']
      end

      if attributes.key?(:'ipg_transaction_id')
        self.ipg_transaction_id = attributes[:'ipg_transaction_id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
      end

      if attributes.key?(:'payment_token')
        self.payment_token = attributes[:'payment_token']
      end

      if attributes.key?(:'transaction_origin')
        self.transaction_origin = attributes[:'transaction_origin']
      end

      if attributes.key?(:'payment_method_details')
        self.payment_method_details = attributes[:'payment_method_details']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'terminal_id')
        self.terminal_id = attributes[:'terminal_id']
      end

      if attributes.key?(:'merchant_id')
        self.merchant_id = attributes[:'merchant_id']
      end

      if attributes.key?(:'merchant_transaction_id')
        self.merchant_transaction_id = attributes[:'merchant_transaction_id']
      end

      if attributes.key?(:'transaction_time')
        self.transaction_time = attributes[:'transaction_time']
      end

      if attributes.key?(:'approved_amount')
        self.approved_amount = attributes[:'approved_amount']
      end

      if attributes.key?(:'transaction_status')
        self.transaction_status = attributes[:'transaction_status']
      end

      if attributes.key?(:'transaction_state')
        self.transaction_state = attributes[:'transaction_state']
      end

      if attributes.key?(:'secure3d_response')
        self.secure3d_response = attributes[:'secure3d_response']
      end

      if attributes.key?(:'redirect_url')
        self.redirect_url = attributes[:'redirect_url']
      end

      if attributes.key?(:'authentication_response')
        self.authentication_response = attributes[:'authentication_response']
      end

      if attributes.key?(:'scheme_transaction_id')
        self.scheme_transaction_id = attributes[:'scheme_transaction_id']
      end

      if attributes.key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.key?(:'additional_details')
        self.additional_details = attributes[:'additional_details']
      end

      if attributes.key?(:'account_updater_response')
        self.account_updater_response = attributes[:'account_updater_response']
      end

      if attributes.key?(:'ach_response')
        self.ach_response = attributes[:'ach_response']
      end

      if attributes.key?(:'currency_conversion_response')
        self.currency_conversion_response = attributes[:'currency_conversion_response']
      end

      if attributes.key?(:'steps')
        if (value = attributes[:'steps']).is_a?(Array)
          self.steps = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@merchant_id.nil? && @merchant_id.to_s.length > 30
        invalid_properties.push('invalid value for "merchant_id", the character length must be smaller than or equal to 30.')
      end

      if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
        invalid_properties.push('invalid value for "merchant_transaction_id", the character length must be smaller than or equal to 40.')
      end

      if !@scheme_transaction_id.nil? && @scheme_transaction_id.to_s.length > 40
        invalid_properties.push('invalid value for "scheme_transaction_id", the character length must be smaller than or equal to 40.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@merchant_id.nil? && @merchant_id.to_s.length > 30
      return false if !@merchant_transaction_id.nil? && @merchant_transaction_id.to_s.length > 40
      transaction_status_validator = EnumAttributeValidator.new('String', ["APPROVED", "WAITING", "VALIDATION_FAILED", "PROCESSING_FAILED", "DECLINED"])
      return false unless transaction_status_validator.valid?(@transaction_status)
      transaction_state_validator = EnumAttributeValidator.new('String', ["AUTHORIZED", "CAPTURED", "DECLINED", "CHECKED", "COMPLETED_GET", "INITIALIZED", "PENDING", "READY", "TEMPLATE", "SETTLED", "VOIDED", "WAITING"])
      return false unless transaction_state_validator.valid?(@transaction_state)
      return false if !@scheme_transaction_id.nil? && @scheme_transaction_id.to_s.length > 40
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_id Value to be assigned
    def merchant_id=(merchant_id)
      if !merchant_id.nil? && merchant_id.to_s.length > 30
        fail ArgumentError, 'invalid value for "merchant_id", the character length must be smaller than or equal to 30.'
      end

      @merchant_id = merchant_id
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_transaction_id Value to be assigned
    def merchant_transaction_id=(merchant_transaction_id)
      if !merchant_transaction_id.nil? && merchant_transaction_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "merchant_transaction_id", the character length must be smaller than or equal to 40.'
      end

      @merchant_transaction_id = merchant_transaction_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_status Object to be assigned
    def transaction_status=(transaction_status)
      validator = EnumAttributeValidator.new('String', ["APPROVED", "WAITING", "VALIDATION_FAILED", "PROCESSING_FAILED", "DECLINED"])
      unless validator.valid?(transaction_status)
        fail ArgumentError, "invalid value for \"transaction_status\", must be one of #{validator.allowable_values}."
      end
      @transaction_status = transaction_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_state Object to be assigned
    def transaction_state=(transaction_state)
      validator = EnumAttributeValidator.new('String', ["AUTHORIZED", "CAPTURED", "DECLINED", "CHECKED", "COMPLETED_GET", "INITIALIZED", "PENDING", "READY", "TEMPLATE", "SETTLED", "VOIDED", "WAITING"])
      unless validator.valid?(transaction_state)
        fail ArgumentError, "invalid value for \"transaction_state\", must be one of #{validator.allowable_values}."
      end
      @transaction_state = transaction_state
    end

    # Custom attribute writer method with validation
    # @param [Object] scheme_transaction_id Value to be assigned
    def scheme_transaction_id=(scheme_transaction_id)
      if !scheme_transaction_id.nil? && scheme_transaction_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "scheme_transaction_id", the character length must be smaller than or equal to 40.'
      end

      @scheme_transaction_id = scheme_transaction_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_request_id == o.client_request_id &&
          api_trace_id == o.api_trace_id &&
          response_type == o.response_type &&
          ipg_transaction_id == o.ipg_transaction_id &&
          order_id == o.order_id &&
          transaction_type == o.transaction_type &&
          payment_token == o.payment_token &&
          transaction_origin == o.transaction_origin &&
          payment_method_details == o.payment_method_details &&
          country == o.country &&
          terminal_id == o.terminal_id &&
          merchant_id == o.merchant_id &&
          merchant_transaction_id == o.merchant_transaction_id &&
          transaction_time == o.transaction_time &&
          approved_amount == o.approved_amount &&
          transaction_status == o.transaction_status &&
          transaction_state == o.transaction_state &&
          secure3d_response == o.secure3d_response &&
          redirect_url == o.redirect_url &&
          authentication_response == o.authentication_response &&
          scheme_transaction_id == o.scheme_transaction_id &&
          processor == o.processor &&
          additional_details == o.additional_details &&
          account_updater_response == o.account_updater_response &&
          ach_response == o.ach_response &&
          currency_conversion_response == o.currency_conversion_response &&
          steps == o.steps
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [client_request_id, api_trace_id, response_type, ipg_transaction_id, order_id, transaction_type, payment_token, transaction_origin, payment_method_details, country, terminal_id, merchant_id, merchant_transaction_id, transaction_time, approved_amount, transaction_status, transaction_state, secure3d_response, redirect_url, authentication_response, scheme_transaction_id, processor, additional_details, account_updater_response, ach_response, currency_conversion_response, steps].hash
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
