=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Request authentication of the payment card using the 3DS 2.x URL redirect scheme.
  class Secure3DAuthenticationRequest < AuthenticationRequest
    # The result of the authentication will be sent to this URL. If not provided, a term URL will be dynamically generated. Note this must be a valid URL (special characters should be URL-encoded).
    attr_accessor :term_url

    # The 3DS method iframe and transaction ID will be sent here. Note this must be a valid URL (special characters should be URL-encoded).
    attr_accessor :method_notification_url

    # Indicates whether or not a challenge should be performed. 01 = No preference (You have no preference whether a challenge should be performed. This is the default value) 02 = No challenge requested (You prefer that no challenge should be performed) 03 = Challenge requested: 3DS Requestor Preference (You prefer that a challenge should be performed) 04 = Challenge requested: Mandate (There are local or regional mandates that mean that a challenge must be performed) The following are applicable only for 3DS 2.2 protocol. 05 = No challenge requested (transactional risk analysis is already performed) 06 = No challenge requested (Data share only) 07 = No challenge requested (strong consumer authentication is already performed) 08 = No challenge requested (utilise whitelist exemption if no challenge required) 09 = Challenge requested (whitelist prompt requested if challenge required) 
    attr_accessor :challenge_indicator

    # Indicates the message category of 3d secure authentication version 2.X. 01 = Payment Authentication 02 = Non-Payment Authentication 80 = Mastercard Data Only 
    attr_accessor :message_category

    # Defines the size of the challenge window displayed to customers during authentication. 01 = 250 x 400 02 = 390 x 400 03 = 500 x 600 04 = 600 x 400 05 = Full screen 
    attr_accessor :challenge_window_size

    # Indicates if the browser issuing the request is capable of performing JavaScript.
    attr_accessor :browser_java_script_enabled

    # 02 = BRW 03 = 3RI 
    attr_accessor :secure3_d_device_channel

    # 01 = Recurring transaction 02 = Instalment transaction 03 = Add card 04 = Maintain card information 05 = Account verification 06 = Split/delayed shipment 07 = Top-up 08 = Mail Order 09 = Telephone Order 10 = Whitelist status check 11 = Other payment 
    attr_accessor :secure3_d_three_ri_indicator

    # Provides additional information to the ACS to determine the best approach for handling an authentication request. 01 = Payment transaction 02 = Recurring transaction 03 = Installment transaction 04 = Add card 05 = Maintain card 06 = Card holder verification as part of EMV token ID and Value 
    attr_accessor :authentication_indicator

    # Date after which no further authorisations shall be performed.
    attr_accessor :recurring_expiry

    # Indicates the minimum number of days between authorisations.
    attr_accessor :recurring_frequency

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
        :'term_url' => :'termURL',
        :'method_notification_url' => :'methodNotificationURL',
        :'challenge_indicator' => :'challengeIndicator',
        :'message_category' => :'messageCategory',
        :'challenge_window_size' => :'challengeWindowSize',
        :'browser_java_script_enabled' => :'browserJavaScriptEnabled',
        :'secure3_d_device_channel' => :'secure3DDeviceChannel',
        :'secure3_d_three_ri_indicator' => :'secure3DThreeRIIndicator',
        :'authentication_indicator' => :'authenticationIndicator',
        :'recurring_expiry' => :'recurringExpiry',
        :'recurring_frequency' => :'recurringFrequency'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'term_url' => :'String',
        :'method_notification_url' => :'String',
        :'challenge_indicator' => :'String',
        :'message_category' => :'String',
        :'challenge_window_size' => :'String',
        :'browser_java_script_enabled' => :'Boolean',
        :'secure3_d_device_channel' => :'String',
        :'secure3_d_three_ri_indicator' => :'String',
        :'authentication_indicator' => :'String',
        :'recurring_expiry' => :'String',
        :'recurring_frequency' => :'Integer'
      }
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'AuthenticationRequest',
      :'Secure3DAuthenticationRequestAllOf'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Secure3DAuthenticationRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Secure3DAuthenticationRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'term_url')
        self.term_url = attributes[:'term_url']
      end

      if attributes.key?(:'method_notification_url')
        self.method_notification_url = attributes[:'method_notification_url']
      end

      if attributes.key?(:'challenge_indicator')
        self.challenge_indicator = attributes[:'challenge_indicator']
      else
        self.challenge_indicator = '01'
      end

      if attributes.key?(:'message_category')
        self.message_category = attributes[:'message_category']
      end

      if attributes.key?(:'challenge_window_size')
        self.challenge_window_size = attributes[:'challenge_window_size']
      end

      if attributes.key?(:'browser_java_script_enabled')
        self.browser_java_script_enabled = attributes[:'browser_java_script_enabled']
      end

      if attributes.key?(:'secure3_d_device_channel')
        self.secure3_d_device_channel = attributes[:'secure3_d_device_channel']
      end

      if attributes.key?(:'secure3_d_three_ri_indicator')
        self.secure3_d_three_ri_indicator = attributes[:'secure3_d_three_ri_indicator']
      end

      if attributes.key?(:'authentication_indicator')
        self.authentication_indicator = attributes[:'authentication_indicator']
      else
        self.authentication_indicator = '01'
      end

      if attributes.key?(:'recurring_expiry')
        self.recurring_expiry = attributes[:'recurring_expiry']
      end

      if attributes.key?(:'recurring_frequency')
        self.recurring_frequency = attributes[:'recurring_frequency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @term_url.nil?
        invalid_properties.push('invalid value for "term_url", term_url cannot be nil.')
      end

      if @method_notification_url.nil?
        invalid_properties.push('invalid value for "method_notification_url", method_notification_url cannot be nil.')
      end

      pattern = Regexp.new(/^([0-9]{4})(1[0-2]|0[1-9])(3[01]|0[1-9]|[12][0-9])$/)
      if !@recurring_expiry.nil? && @recurring_expiry !~ pattern
        invalid_properties.push("invalid value for \"recurring_expiry\", must conform to the pattern #{pattern}.")
      end

      if !@recurring_frequency.nil? && @recurring_frequency > 9999
        invalid_properties.push('invalid value for "recurring_frequency", must be smaller than or equal to 9999.')
      end

      if !@recurring_frequency.nil? && @recurring_frequency < 1
        invalid_properties.push('invalid value for "recurring_frequency", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @term_url.nil?
      return false if @method_notification_url.nil?
      challenge_indicator_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09"])
      return false unless challenge_indicator_validator.valid?(@challenge_indicator)
      message_category_validator = EnumAttributeValidator.new('String', ["01", "02", "80"])
      return false unless message_category_validator.valid?(@message_category)
      challenge_window_size_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05"])
      return false unless challenge_window_size_validator.valid?(@challenge_window_size)
      secure3_d_device_channel_validator = EnumAttributeValidator.new('String', ["02", "03"])
      return false unless secure3_d_device_channel_validator.valid?(@secure3_d_device_channel)
      secure3_d_three_ri_indicator_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11"])
      return false unless secure3_d_three_ri_indicator_validator.valid?(@secure3_d_three_ri_indicator)
      authentication_indicator_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06"])
      return false unless authentication_indicator_validator.valid?(@authentication_indicator)
      return false if !@recurring_expiry.nil? && @recurring_expiry !~ Regexp.new(/^([0-9]{4})(1[0-2]|0[1-9])(3[01]|0[1-9]|[12][0-9])$/)
      return false if !@recurring_frequency.nil? && @recurring_frequency > 9999
      return false if !@recurring_frequency.nil? && @recurring_frequency < 1
      true && super
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] challenge_indicator Object to be assigned
    def challenge_indicator=(challenge_indicator)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09"])
      unless validator.valid?(challenge_indicator)
        fail ArgumentError, "invalid value for \"challenge_indicator\", must be one of #{validator.allowable_values}."
      end
      @challenge_indicator = challenge_indicator
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] message_category Object to be assigned
    def message_category=(message_category)
      validator = EnumAttributeValidator.new('String', ["01", "02", "80"])
      unless validator.valid?(message_category)
        fail ArgumentError, "invalid value for \"message_category\", must be one of #{validator.allowable_values}."
      end
      @message_category = message_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] challenge_window_size Object to be assigned
    def challenge_window_size=(challenge_window_size)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05"])
      unless validator.valid?(challenge_window_size)
        fail ArgumentError, "invalid value for \"challenge_window_size\", must be one of #{validator.allowable_values}."
      end
      @challenge_window_size = challenge_window_size
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secure3_d_device_channel Object to be assigned
    def secure3_d_device_channel=(secure3_d_device_channel)
      validator = EnumAttributeValidator.new('String', ["02", "03"])
      unless validator.valid?(secure3_d_device_channel)
        fail ArgumentError, "invalid value for \"secure3_d_device_channel\", must be one of #{validator.allowable_values}."
      end
      @secure3_d_device_channel = secure3_d_device_channel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secure3_d_three_ri_indicator Object to be assigned
    def secure3_d_three_ri_indicator=(secure3_d_three_ri_indicator)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11"])
      unless validator.valid?(secure3_d_three_ri_indicator)
        fail ArgumentError, "invalid value for \"secure3_d_three_ri_indicator\", must be one of #{validator.allowable_values}."
      end
      @secure3_d_three_ri_indicator = secure3_d_three_ri_indicator
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_indicator Object to be assigned
    def authentication_indicator=(authentication_indicator)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04", "05", "06"])
      unless validator.valid?(authentication_indicator)
        fail ArgumentError, "invalid value for \"authentication_indicator\", must be one of #{validator.allowable_values}."
      end
      @authentication_indicator = authentication_indicator
    end

    # Custom attribute writer method with validation
    # @param [Object] recurring_expiry Value to be assigned
    def recurring_expiry=(recurring_expiry)
      pattern = Regexp.new(/^([0-9]{4})(1[0-2]|0[1-9])(3[01]|0[1-9]|[12][0-9])$/)
      if !recurring_expiry.nil? && recurring_expiry !~ pattern
        fail ArgumentError, "invalid value for \"recurring_expiry\", must conform to the pattern #{pattern}."
      end

      @recurring_expiry = recurring_expiry
    end

    # Custom attribute writer method with validation
    # @param [Object] recurring_frequency Value to be assigned
    def recurring_frequency=(recurring_frequency)
      if !recurring_frequency.nil? && recurring_frequency > 9999
        fail ArgumentError, 'invalid value for "recurring_frequency", must be smaller than or equal to 9999.'
      end

      if !recurring_frequency.nil? && recurring_frequency < 1
        fail ArgumentError, 'invalid value for "recurring_frequency", must be greater than or equal to 1.'
      end

      @recurring_frequency = recurring_frequency
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          term_url == o.term_url &&
          method_notification_url == o.method_notification_url &&
          challenge_indicator == o.challenge_indicator &&
          message_category == o.message_category &&
          challenge_window_size == o.challenge_window_size &&
          browser_java_script_enabled == o.browser_java_script_enabled &&
          secure3_d_device_channel == o.secure3_d_device_channel &&
          secure3_d_three_ri_indicator == o.secure3_d_three_ri_indicator &&
          authentication_indicator == o.authentication_indicator &&
          recurring_expiry == o.recurring_expiry &&
          recurring_frequency == o.recurring_frequency && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [term_url, method_notification_url, challenge_indicator, message_category, challenge_window_size, browser_java_script_enabled, secure3_d_device_channel, secure3_d_three_ri_indicator, authentication_indicator, recurring_expiry, recurring_frequency].hash
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
      super(attributes, self.class.superclass.attribute_map, self.class.superclass.openapi_types)
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
      hash = super(self.class.superclass.attribute_map, openapi_nullable)
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
