=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Attributes for controlling transactions with additional parameters like dccFlow, '3ds' flows.
  class RedirectAttributes
    # Indicates whether or not a challenge should be performed. 01 = No preference (You have no preference whether a challenge should be performed. This is the default value) 02 = No challenge requested (You prefer that no challenge should be performed) 03 = Challenge requested: 3DS Requestor Preference (You prefer that a challenge should be performed) 04 = Challenge requested: Mandate (There are local or regional mandates that mean that a challenge must be performed) 
    attr_accessor :challenge_indicator

    # If 3D secure should be applied.
    attr_accessor :authenticate_transaction

    # EmvCo Messag Category
    attr_accessor :three_ds_emv_co_message_category

    # Browser Java Script Enabled flag
    attr_accessor :browser_java_script_enabled

    # Override 3ds Country Exclusion flag
    attr_accessor :override3ds_country_exclusion

    # Secure 3D Transaction Type
    attr_accessor :three_ds_transaction_type

    # skip TRA exemption for the transaction
    attr_accessor :skip_tra

    # Full by pass flag
    attr_accessor :full_bypass

    # Mobile mode flag
    attr_accessor :mobile_mode

    # Payment Mode
    attr_accessor :payment_mode

    # Language used by client.
    attr_accessor :language

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
        :'challenge_indicator' => :'challengeIndicator',
        :'authenticate_transaction' => :'authenticateTransaction',
        :'three_ds_emv_co_message_category' => :'threeDSEmvCoMessageCategory',
        :'browser_java_script_enabled' => :'browserJavaScriptEnabled',
        :'override3ds_country_exclusion' => :'override3dsCountryExclusion',
        :'three_ds_transaction_type' => :'threeDSTransactionType',
        :'skip_tra' => :'skipTRA',
        :'full_bypass' => :'fullBypass',
        :'mobile_mode' => :'mobileMode',
        :'payment_mode' => :'paymentMode',
        :'language' => :'language'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'challenge_indicator' => :'String',
        :'authenticate_transaction' => :'Boolean',
        :'three_ds_emv_co_message_category' => :'String',
        :'browser_java_script_enabled' => :'Boolean',
        :'override3ds_country_exclusion' => :'Boolean',
        :'three_ds_transaction_type' => :'String',
        :'skip_tra' => :'Boolean',
        :'full_bypass' => :'Boolean',
        :'mobile_mode' => :'Boolean',
        :'payment_mode' => :'String',
        :'language' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::RedirectAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::RedirectAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'challenge_indicator')
        self.challenge_indicator = attributes[:'challenge_indicator']
      else
        self.challenge_indicator = '01'
      end

      if attributes.key?(:'authenticate_transaction')
        self.authenticate_transaction = attributes[:'authenticate_transaction']
      end

      if attributes.key?(:'three_ds_emv_co_message_category')
        self.three_ds_emv_co_message_category = attributes[:'three_ds_emv_co_message_category']
      end

      if attributes.key?(:'browser_java_script_enabled')
        self.browser_java_script_enabled = attributes[:'browser_java_script_enabled']
      else
        self.browser_java_script_enabled = false
      end

      if attributes.key?(:'override3ds_country_exclusion')
        self.override3ds_country_exclusion = attributes[:'override3ds_country_exclusion']
      else
        self.override3ds_country_exclusion = false
      end

      if attributes.key?(:'three_ds_transaction_type')
        self.three_ds_transaction_type = attributes[:'three_ds_transaction_type']
      end

      if attributes.key?(:'skip_tra')
        self.skip_tra = attributes[:'skip_tra']
      else
        self.skip_tra = false
      end

      if attributes.key?(:'full_bypass')
        self.full_bypass = attributes[:'full_bypass']
      else
        self.full_bypass = false
      end

      if attributes.key?(:'mobile_mode')
        self.mobile_mode = attributes[:'mobile_mode']
      else
        self.mobile_mode = false
      end

      if attributes.key?(:'payment_mode')
        self.payment_mode = attributes[:'payment_mode']
      end

      if attributes.key?(:'language')
        self.language = attributes[:'language']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^(?!\s*$).+/)
      if !@language.nil? && @language !~ pattern
        invalid_properties.push("invalid value for \"language\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      challenge_indicator_validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04"])
      return false unless challenge_indicator_validator.valid?(@challenge_indicator)
      three_ds_emv_co_message_category_validator = EnumAttributeValidator.new('String', ["01", "02", "80"])
      return false unless three_ds_emv_co_message_category_validator.valid?(@three_ds_emv_co_message_category)
      three_ds_transaction_type_validator = EnumAttributeValidator.new('String', ["01", "03", "10", "11", "28"])
      return false unless three_ds_transaction_type_validator.valid?(@three_ds_transaction_type)
      payment_mode_validator = EnumAttributeValidator.new('String', ["FULLPAY", "PAYONLY", "PAYPLUS"])
      return false unless payment_mode_validator.valid?(@payment_mode)
      return false if !@language.nil? && @language !~ Regexp.new(/^(?!\s*$).+/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] challenge_indicator Object to be assigned
    def challenge_indicator=(challenge_indicator)
      validator = EnumAttributeValidator.new('String', ["01", "02", "03", "04"])
      unless validator.valid?(challenge_indicator)
        fail ArgumentError, "invalid value for \"challenge_indicator\", must be one of #{validator.allowable_values}."
      end
      @challenge_indicator = challenge_indicator
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_ds_emv_co_message_category Object to be assigned
    def three_ds_emv_co_message_category=(three_ds_emv_co_message_category)
      validator = EnumAttributeValidator.new('String', ["01", "02", "80"])
      unless validator.valid?(three_ds_emv_co_message_category)
        fail ArgumentError, "invalid value for \"three_ds_emv_co_message_category\", must be one of #{validator.allowable_values}."
      end
      @three_ds_emv_co_message_category = three_ds_emv_co_message_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] three_ds_transaction_type Object to be assigned
    def three_ds_transaction_type=(three_ds_transaction_type)
      validator = EnumAttributeValidator.new('String', ["01", "03", "10", "11", "28"])
      unless validator.valid?(three_ds_transaction_type)
        fail ArgumentError, "invalid value for \"three_ds_transaction_type\", must be one of #{validator.allowable_values}."
      end
      @three_ds_transaction_type = three_ds_transaction_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_mode Object to be assigned
    def payment_mode=(payment_mode)
      validator = EnumAttributeValidator.new('String', ["FULLPAY", "PAYONLY", "PAYPLUS"])
      unless validator.valid?(payment_mode)
        fail ArgumentError, "invalid value for \"payment_mode\", must be one of #{validator.allowable_values}."
      end
      @payment_mode = payment_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] language Value to be assigned
    def language=(language)
      pattern = Regexp.new(/^(?!\s*$).+/)
      if !language.nil? && language !~ pattern
        fail ArgumentError, "invalid value for \"language\", must conform to the pattern #{pattern}."
      end

      @language = language
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          challenge_indicator == o.challenge_indicator &&
          authenticate_transaction == o.authenticate_transaction &&
          three_ds_emv_co_message_category == o.three_ds_emv_co_message_category &&
          browser_java_script_enabled == o.browser_java_script_enabled &&
          override3ds_country_exclusion == o.override3ds_country_exclusion &&
          three_ds_transaction_type == o.three_ds_transaction_type &&
          skip_tra == o.skip_tra &&
          full_bypass == o.full_bypass &&
          mobile_mode == o.mobile_mode &&
          payment_mode == o.payment_mode &&
          language == o.language
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [challenge_indicator, authenticate_transaction, three_ds_emv_co_message_category, browser_java_script_enabled, override3ds_country_exclusion, three_ds_transaction_type, skip_tra, full_bypass, mobile_mode, payment_mode, language].hash
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
