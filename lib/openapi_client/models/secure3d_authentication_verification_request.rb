=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.6.0.20190507.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Authentication verification request specific to 3DSecure transactions.
  class Secure3dAuthenticationVerificationRequest
    # An optional Outlet ID for clients that support multiple stores in the same developer app.
    attr_accessor :store_id

    # Object name of the authentication verification request.
    attr_accessor :request_type

    # Card security code if required by merchant.
    attr_accessor :security_code

    attr_accessor :billing_address

    # A formatted message providing results of the issuer’s cardholder authentication.
    attr_accessor :payer_authentication_response

    # Formatted string encoding transaction time, order ID, and return URL data.
    attr_accessor :merchant_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'store_id' => :'storeId',
        :'request_type' => :'requestType',
        :'security_code' => :'securityCode',
        :'billing_address' => :'billingAddress',
        :'payer_authentication_response' => :'payerAuthenticationResponse',
        :'merchant_data' => :'merchantData'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'store_id' => :'String',
        :'request_type' => :'String',
        :'security_code' => :'String',
        :'billing_address' => :'Address',
        :'payer_authentication_response' => :'String',
        :'merchant_data' => :'String'
      }
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AuthenticationVerificationRequest',
      :'Secure3dAuthenticationVerificationRequestAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Secure3dAuthenticationVerificationRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Secure3dAuthenticationVerificationRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'store_id')
        self.store_id = attributes[:'store_id']
      end

      if attributes.key?(:'request_type')
        self.request_type = attributes[:'request_type']
      end

      if attributes.key?(:'security_code')
        self.security_code = attributes[:'security_code']
      end

      if attributes.key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.key?(:'payer_authentication_response')
        self.payer_authentication_response = attributes[:'payer_authentication_response']
      end

      if attributes.key?(:'merchant_data')
        self.merchant_data = attributes[:'merchant_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@store_id.nil? && @store_id.to_s.length > 20
        invalid_properties.push('invalid value for "store_id", the character length must be smaller than or equal to 20.')
      end

      if @request_type.nil?
        invalid_properties.push('invalid value for "request_type", request_type cannot be nil.')
      end

      if @payer_authentication_response.nil?
        invalid_properties.push('invalid value for "payer_authentication_response", payer_authentication_response cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @payer_authentication_response !~ pattern
        invalid_properties.push("invalid value for \"payer_authentication_response\", must conform to the pattern #{pattern}.")
      end

      if @merchant_data.nil?
        invalid_properties.push('invalid value for "merchant_data", merchant_data cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @merchant_data !~ pattern
        invalid_properties.push("invalid value for \"merchant_data\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@store_id.nil? && @store_id.to_s.length > 20
      return false if @request_type.nil?
      return false if @payer_authentication_response.nil?
      return false if @payer_authentication_response !~ Regexp.new(/^(?!\s*$).+/)
      return false if @merchant_data.nil?
      return false if @merchant_data !~ Regexp.new(/^(?!\s*$).+/)
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
    # @param [Object] payer_authentication_response Value to be assigned
    def payer_authentication_response=(payer_authentication_response)
      if payer_authentication_response.nil?
        fail ArgumentError, 'payer_authentication_response cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if payer_authentication_response !~ pattern
        fail ArgumentError, "invalid value for \"payer_authentication_response\", must conform to the pattern #{pattern}."
      end

      @payer_authentication_response = payer_authentication_response
    end

    # Custom attribute writer method with validation
    # @param [Object] merchant_data Value to be assigned
    def merchant_data=(merchant_data)
      if merchant_data.nil?
        fail ArgumentError, 'merchant_data cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if merchant_data !~ pattern
        fail ArgumentError, "invalid value for \"merchant_data\", must conform to the pattern #{pattern}."
      end

      @merchant_data = merchant_data
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          store_id == o.store_id &&
          request_type == o.request_type &&
          security_code == o.security_code &&
          billing_address == o.billing_address &&
          payer_authentication_response == o.payer_authentication_response &&
          merchant_data == o.merchant_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [store_id, request_type, security_code, billing_address, payer_authentication_response, merchant_data].hash
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
