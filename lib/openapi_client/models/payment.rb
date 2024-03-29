=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Payment information for the transaction.
  class Payment
    # Defines the type of the payment.
    attr_accessor :payment_type

    attr_accessor :method

    # Indicates if the cards Personal Identification Number was supplied.
    attr_accessor :pin_present

    # The method in which the card information entered the system.
    attr_accessor :entry_method

    attr_accessor :issuer_response

    # The actual approved amount. This field should be filled in when the message has already passed through the issuer (e.g. post-authorization). For transaction/authorization this amount refers to the amount that was locked on the card-holders account.
    attr_accessor :issuer_approved_amount

    # The payment methods account balance if available. This field should be filled in when the message has already passed through the issuer (e.g. post-authorization).
    attr_accessor :issuer_card_balance

    attr_accessor :verification_avs

    attr_accessor :verification3ds

    attr_accessor :verification_cvv

    # A JSON object that carries any additional information that might be helpful for fraud detection.
    attr_accessor :user_defined

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
        :'payment_type' => :'paymentType',
        :'method' => :'method',
        :'pin_present' => :'pinPresent',
        :'entry_method' => :'entryMethod',
        :'issuer_response' => :'issuerResponse',
        :'issuer_approved_amount' => :'issuerApprovedAmount',
        :'issuer_card_balance' => :'issuerCardBalance',
        :'verification_avs' => :'verificationAvs',
        :'verification3ds' => :'verification3ds',
        :'verification_cvv' => :'verificationCvv',
        :'user_defined' => :'userDefined'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_type' => :'String',
        :'method' => :'Method',
        :'pin_present' => :'Boolean',
        :'entry_method' => :'String',
        :'issuer_response' => :'IssuerResponse',
        :'issuer_approved_amount' => :'String',
        :'issuer_card_balance' => :'String',
        :'verification_avs' => :'VerificationAvs',
        :'verification3ds' => :'Verification3ds',
        :'verification_cvv' => :'VerificationCvv',
        :'user_defined' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Payment` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Payment`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_type')
        self.payment_type = attributes[:'payment_type']
      end

      if attributes.key?(:'method')
        self.method = attributes[:'method']
      end

      if attributes.key?(:'pin_present')
        self.pin_present = attributes[:'pin_present']
      end

      if attributes.key?(:'entry_method')
        self.entry_method = attributes[:'entry_method']
      end

      if attributes.key?(:'issuer_response')
        self.issuer_response = attributes[:'issuer_response']
      end

      if attributes.key?(:'issuer_approved_amount')
        self.issuer_approved_amount = attributes[:'issuer_approved_amount']
      end

      if attributes.key?(:'issuer_card_balance')
        self.issuer_card_balance = attributes[:'issuer_card_balance']
      end

      if attributes.key?(:'verification_avs')
        self.verification_avs = attributes[:'verification_avs']
      end

      if attributes.key?(:'verification3ds')
        self.verification3ds = attributes[:'verification3ds']
      end

      if attributes.key?(:'verification_cvv')
        self.verification_cvv = attributes[:'verification_cvv']
      end

      if attributes.key?(:'user_defined')
        self.user_defined = attributes[:'user_defined']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @payment_type.nil?
        invalid_properties.push('invalid value for "payment_type", payment_type cannot be nil.')
      end

      if @method.nil?
        invalid_properties.push('invalid value for "method", method cannot be nil.')
      end

      if @pin_present.nil?
        invalid_properties.push('invalid value for "pin_present", pin_present cannot be nil.')
      end

      if @entry_method.nil?
        invalid_properties.push('invalid value for "entry_method", entry_method cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @payment_type.nil?
      payment_type_validator = EnumAttributeValidator.new('String', ["payment/card", "payment/wallet"])
      return false unless payment_type_validator.valid?(@payment_type)
      return false if @method.nil?
      return false if @pin_present.nil?
      return false if @entry_method.nil?
      entry_method_validator = EnumAttributeValidator.new('String', ["manual", "stripe", "ocr", "emv", "nfc", "remote", "pin_present"])
      return false unless entry_method_validator.valid?(@entry_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_type Object to be assigned
    def payment_type=(payment_type)
      validator = EnumAttributeValidator.new('String', ["payment/card", "payment/wallet"])
      unless validator.valid?(payment_type)
        fail ArgumentError, "invalid value for \"payment_type\", must be one of #{validator.allowable_values}."
      end
      @payment_type = payment_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entry_method Object to be assigned
    def entry_method=(entry_method)
      validator = EnumAttributeValidator.new('String', ["manual", "stripe", "ocr", "emv", "nfc", "remote", "pin_present"])
      unless validator.valid?(entry_method)
        fail ArgumentError, "invalid value for \"entry_method\", must be one of #{validator.allowable_values}."
      end
      @entry_method = entry_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          payment_type == o.payment_type &&
          method == o.method &&
          pin_present == o.pin_present &&
          entry_method == o.entry_method &&
          issuer_response == o.issuer_response &&
          issuer_approved_amount == o.issuer_approved_amount &&
          issuer_card_balance == o.issuer_card_balance &&
          verification_avs == o.verification_avs &&
          verification3ds == o.verification3ds &&
          verification_cvv == o.verification_cvv &&
          user_defined == o.user_defined
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_type, method, pin_present, entry_method, issuer_response, issuer_approved_amount, issuer_card_balance, verification_avs, verification3ds, verification_cvv, user_defined].hash
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
