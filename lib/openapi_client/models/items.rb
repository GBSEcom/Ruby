=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.5.0.20211029.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Network information.
  class Items
    # Defines the type of network associated with the device.
    attr_accessor :network_type

    # The IPv4 or IPv6 address of the device if the network assigned one.
    attr_accessor :ip

    # The devices primary phone number. This value should be supplied directly without any transformation (e.g. removal of spaces, hyphens or parentheses). If this data is available in segregated fields, it should be concatenated using a blank space (\" \") as a separator.
    attr_accessor :phone_number

    # The network carrier name.
    attr_accessor :carrier_name

    # The Mobile Country Code (MCC) as described in the ITUs E.212 specification.
    attr_accessor :mobile_country_code

    # The Mobile Network Code (MNC) as described in the ITUs E.212 specification.
    attr_accessor :mobile_network_code

    # The Mobile Subscription Identification Number code (MSIN) as described in the ITUs E.212 specification.
    attr_accessor :subscription_identification_number

    # The Location Area Code (LAC) is a 16-bit identifier for a region that is covered by a set of network antennas.
    attr_accessor :location_area_code

    # The Cell ID (CID) is identifier for a specific Base Transceiver Station (BTS) within a specific Location Area Code (LAC).
    attr_accessor :cell_id

    # An identifier of the network standard used.
    attr_accessor :standard

    # The MAC address of the device that is connected to the Wi-Fi network.
    attr_accessor :mac

    # The Wi-Fi networks Service Set Identifier (SSID).
    attr_accessor :ssid

    # The Wi-Fi networks Basic Service Set Identifier (BSSID).
    attr_accessor :bssid

    # A JSON object that can carry any additional information about the network that might be helpful for fraud detection.
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
        :'network_type' => :'networkType',
        :'ip' => :'ip',
        :'phone_number' => :'phoneNumber',
        :'carrier_name' => :'carrierName',
        :'mobile_country_code' => :'mobileCountryCode',
        :'mobile_network_code' => :'mobileNetworkCode',
        :'subscription_identification_number' => :'subscriptionIdentificationNumber',
        :'location_area_code' => :'locationAreaCode',
        :'cell_id' => :'cellId',
        :'standard' => :'standard',
        :'mac' => :'mac',
        :'ssid' => :'ssid',
        :'bssid' => :'bssid',
        :'user_defined' => :'userDefined'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'network_type' => :'String',
        :'ip' => :'String',
        :'phone_number' => :'String',
        :'carrier_name' => :'String',
        :'mobile_country_code' => :'String',
        :'mobile_network_code' => :'String',
        :'subscription_identification_number' => :'String',
        :'location_area_code' => :'String',
        :'cell_id' => :'String',
        :'standard' => :'String',
        :'mac' => :'String',
        :'ssid' => :'String',
        :'bssid' => :'String',
        :'user_defined' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Items` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Items`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'network_type')
        self.network_type = attributes[:'network_type']
      end

      if attributes.key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'carrier_name')
        self.carrier_name = attributes[:'carrier_name']
      end

      if attributes.key?(:'mobile_country_code')
        self.mobile_country_code = attributes[:'mobile_country_code']
      end

      if attributes.key?(:'mobile_network_code')
        self.mobile_network_code = attributes[:'mobile_network_code']
      end

      if attributes.key?(:'subscription_identification_number')
        self.subscription_identification_number = attributes[:'subscription_identification_number']
      end

      if attributes.key?(:'location_area_code')
        self.location_area_code = attributes[:'location_area_code']
      end

      if attributes.key?(:'cell_id')
        self.cell_id = attributes[:'cell_id']
      end

      if attributes.key?(:'standard')
        self.standard = attributes[:'standard']
      end

      if attributes.key?(:'mac')
        self.mac = attributes[:'mac']
      end

      if attributes.key?(:'ssid')
        self.ssid = attributes[:'ssid']
      end

      if attributes.key?(:'bssid')
        self.bssid = attributes[:'bssid']
      end

      if attributes.key?(:'user_defined')
        self.user_defined = attributes[:'user_defined']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @network_type.nil?
        invalid_properties.push('invalid value for "network_type", network_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @network_type.nil?
      network_type_validator = EnumAttributeValidator.new('String', ["network/mobile", "network/wifi"])
      return false unless network_type_validator.valid?(@network_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_type Object to be assigned
    def network_type=(network_type)
      validator = EnumAttributeValidator.new('String', ["network/mobile", "network/wifi"])
      unless validator.valid?(network_type)
        fail ArgumentError, "invalid value for \"network_type\", must be one of #{validator.allowable_values}."
      end
      @network_type = network_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          network_type == o.network_type &&
          ip == o.ip &&
          phone_number == o.phone_number &&
          carrier_name == o.carrier_name &&
          mobile_country_code == o.mobile_country_code &&
          mobile_network_code == o.mobile_network_code &&
          subscription_identification_number == o.subscription_identification_number &&
          location_area_code == o.location_area_code &&
          cell_id == o.cell_id &&
          standard == o.standard &&
          mac == o.mac &&
          ssid == o.ssid &&
          bssid == o.bssid &&
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
      [network_type, ip, phone_number, carrier_name, mobile_country_code, mobile_network_code, subscription_identification_number, location_area_code, cell_id, standard, mac, ssid, bssid, user_defined].hash
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
