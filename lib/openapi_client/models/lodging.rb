=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.6.0.20190507.002

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Additional data specific to the lodging/hotel industry.
  class Lodging
    # Date of arrival.
    attr_accessor :arrival_date

    # Date of departure.
    attr_accessor :departure_date

    # Portfolio number.
    attr_accessor :folio_number

    # Information about charges other than base lodging.
    attr_accessor :extra_charges

    # Indicates if the transaction is associated with a delayed or no-show penalty.
    attr_accessor :no_show_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'arrival_date' => :'arrivalDate',
        :'departure_date' => :'departureDate',
        :'folio_number' => :'folioNumber',
        :'extra_charges' => :'extraCharges',
        :'no_show_indicator' => :'noShowIndicator'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'arrival_date' => :'Date',
        :'departure_date' => :'Date',
        :'folio_number' => :'String',
        :'extra_charges' => :'Array<LodgingExtraCharges>',
        :'no_show_indicator' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Lodging` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Lodging`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'arrival_date')
        self.arrival_date = attributes[:'arrival_date']
      end

      if attributes.key?(:'departure_date')
        self.departure_date = attributes[:'departure_date']
      end

      if attributes.key?(:'folio_number')
        self.folio_number = attributes[:'folio_number']
      end

      if attributes.key?(:'extra_charges')
        if (value = attributes[:'extra_charges']).is_a?(Array)
          self.extra_charges = value
        end
      end

      if attributes.key?(:'no_show_indicator')
        self.no_show_indicator = attributes[:'no_show_indicator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@folio_number.nil? && @folio_number.to_s.length > 20
        invalid_properties.push('invalid value for "folio_number", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@folio_number.nil? && @folio_number.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] folio_number Value to be assigned
    def folio_number=(folio_number)
      if !folio_number.nil? && folio_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "folio_number", the character length must be smaller than or equal to 20.'
      end

      @folio_number = folio_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          arrival_date == o.arrival_date &&
          departure_date == o.departure_date &&
          folio_number == o.folio_number &&
          extra_charges == o.extra_charges &&
          no_show_indicator == o.no_show_indicator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [arrival_date, departure_date, folio_number, extra_charges, no_show_indicator].hash
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
