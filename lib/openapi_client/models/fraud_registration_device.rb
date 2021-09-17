=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.4.0.20210824.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # The device where this transaction originated.
  class FraudRegistrationDevice
    # Defines the type of this object.
    attr_accessor :device_type

    # The unique ID of the device. Must be unique for the entire system (not just within a specific merchant or industry).
    attr_accessor :device_id

    # Information about the networks associated with the device.
    attr_accessor :networks

    # The GPS decimal latitude, ranging from (-90.0 to 90.0) where positive numbers indicate locations North of the equator.
    attr_accessor :latitude

    # The GPS decimal longitude, ranging from (-180.0 to 180.0) where positive numbers indicate locations East of the IERS Reference Meridian.
    attr_accessor :longitude

    # The device's International Mobile Equipment Identity (IMEI) as described in IETF RFC7254.
    attr_accessor :imei

    # The device's model name.
    attr_accessor :model

    # The device's manufacturer.
    attr_accessor :manufacturer

    # The timezone offset from UTC to the devices timezone configuration, specified in the format +hh:mm.
    attr_accessor :timezone_offset

    # A flag indicating that the device has been altered to allow privileged access to users. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise.
    attr_accessor :rooted

    # A flag indicating that malware was detected on the mobile phone. This flag should only be set to false if a test was performed and the result was negative. Leave unset otherwise.
    attr_accessor :malware_detected

    # A JSON object that can carry any additional information about the device that might be helpful for fraud detection.
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
        :'device_type' => :'deviceType',
        :'device_id' => :'deviceId',
        :'networks' => :'networks',
        :'latitude' => :'latitude',
        :'longitude' => :'longitude',
        :'imei' => :'imei',
        :'model' => :'model',
        :'manufacturer' => :'manufacturer',
        :'timezone_offset' => :'timezoneOffset',
        :'rooted' => :'rooted',
        :'malware_detected' => :'malwareDetected',
        :'user_defined' => :'userDefined'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'device_type' => :'String',
        :'device_id' => :'String',
        :'networks' => :'Array<FraudRegistrationDeviceItems>',
        :'latitude' => :'Float',
        :'longitude' => :'Float',
        :'imei' => :'String',
        :'model' => :'String',
        :'manufacturer' => :'String',
        :'timezone_offset' => :'String',
        :'rooted' => :'Boolean',
        :'malware_detected' => :'Boolean',
        :'user_defined' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::FraudRegistrationDevice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::FraudRegistrationDevice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'device_type')
        self.device_type = attributes[:'device_type']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'networks')
        if (value = attributes[:'networks']).is_a?(Array)
          self.networks = value
        end
      end

      if attributes.key?(:'latitude')
        self.latitude = attributes[:'latitude']
      end

      if attributes.key?(:'longitude')
        self.longitude = attributes[:'longitude']
      end

      if attributes.key?(:'imei')
        self.imei = attributes[:'imei']
      end

      if attributes.key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.key?(:'manufacturer')
        self.manufacturer = attributes[:'manufacturer']
      end

      if attributes.key?(:'timezone_offset')
        self.timezone_offset = attributes[:'timezone_offset']
      end

      if attributes.key?(:'rooted')
        self.rooted = attributes[:'rooted']
      end

      if attributes.key?(:'malware_detected')
        self.malware_detected = attributes[:'malware_detected']
      end

      if attributes.key?(:'user_defined')
        self.user_defined = attributes[:'user_defined']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @device_type.nil?
        invalid_properties.push('invalid value for "device_type", device_type cannot be nil.')
      end

      if @device_id.nil?
        invalid_properties.push('invalid value for "device_id", device_id cannot be nil.')
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if @device_id !~ pattern
        invalid_properties.push("invalid value for \"device_id\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @device_type.nil?
      device_type_validator = EnumAttributeValidator.new('String', ["device/pos", "device/mobile"])
      return false unless device_type_validator.valid?(@device_type)
      return false if @device_id.nil?
      return false if @device_id !~ Regexp.new(/^(?!\s*$).+/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_type Object to be assigned
    def device_type=(device_type)
      validator = EnumAttributeValidator.new('String', ["device/pos", "device/mobile"])
      unless validator.valid?(device_type)
        fail ArgumentError, "invalid value for \"device_type\", must be one of #{validator.allowable_values}."
      end
      @device_type = device_type
    end

    # Custom attribute writer method with validation
    # @param [Object] device_id Value to be assigned
    def device_id=(device_id)
      if device_id.nil?
        fail ArgumentError, 'device_id cannot be nil'
      end

      pattern = Regexp.new(/^(?!\s*$).+/)
      if device_id !~ pattern
        fail ArgumentError, "invalid value for \"device_id\", must conform to the pattern #{pattern}."
      end

      @device_id = device_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          device_type == o.device_type &&
          device_id == o.device_id &&
          networks == o.networks &&
          latitude == o.latitude &&
          longitude == o.longitude &&
          imei == o.imei &&
          model == o.model &&
          manufacturer == o.manufacturer &&
          timezone_offset == o.timezone_offset &&
          rooted == o.rooted &&
          malware_detected == o.malware_detected &&
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
      [device_type, device_id, networks, latitude, longitude, imei, model, manufacturer, timezone_offset, rooted, malware_detected, user_defined].hash
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
