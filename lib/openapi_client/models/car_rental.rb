=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.2.0.20210406.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Additional data specific to the car rental industry.
  class CarRental
    # The car rental agreement number.
    attr_accessor :agreement_number

    # The name of the person renting the car.
    attr_accessor :renter_name

    # The city where the rental ends and the car is returned.
    attr_accessor :return_city

    # The date the car rental ends and the car is returned.
    attr_accessor :return_date

    # The date the car rental begins.
    attr_accessor :pickup_date

    # The classification of the rental car.
    attr_accessor :rental_class_id

    # Array containing information about charges other than the rental rate.
    attr_accessor :extra_charges

    # Indicates if the transaction is related to a no-show charge.
    attr_accessor :no_show_indicator

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agreement_number' => :'agreementNumber',
        :'renter_name' => :'renterName',
        :'return_city' => :'returnCity',
        :'return_date' => :'returnDate',
        :'pickup_date' => :'pickupDate',
        :'rental_class_id' => :'rentalClassId',
        :'extra_charges' => :'extraCharges',
        :'no_show_indicator' => :'noShowIndicator'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agreement_number' => :'String',
        :'renter_name' => :'String',
        :'return_city' => :'String',
        :'return_date' => :'Date',
        :'pickup_date' => :'Date',
        :'rental_class_id' => :'String',
        :'extra_charges' => :'Array<CarRentalExtraCharges>',
        :'no_show_indicator' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::CarRental` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::CarRental`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agreement_number')
        self.agreement_number = attributes[:'agreement_number']
      end

      if attributes.key?(:'renter_name')
        self.renter_name = attributes[:'renter_name']
      end

      if attributes.key?(:'return_city')
        self.return_city = attributes[:'return_city']
      end

      if attributes.key?(:'return_date')
        self.return_date = attributes[:'return_date']
      end

      if attributes.key?(:'pickup_date')
        self.pickup_date = attributes[:'pickup_date']
      end

      if attributes.key?(:'rental_class_id')
        self.rental_class_id = attributes[:'rental_class_id']
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
      if !@agreement_number.nil? && @agreement_number.to_s.length > 20
        invalid_properties.push('invalid value for "agreement_number", the character length must be smaller than or equal to 20.')
      end

      if !@renter_name.nil? && @renter_name.to_s.length > 20
        invalid_properties.push('invalid value for "renter_name", the character length must be smaller than or equal to 20.')
      end

      if !@return_city.nil? && @return_city.to_s.length > 20
        invalid_properties.push('invalid value for "return_city", the character length must be smaller than or equal to 20.')
      end

      if !@rental_class_id.nil? && @rental_class_id.to_s.length > 6
        invalid_properties.push('invalid value for "rental_class_id", the character length must be smaller than or equal to 6.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@agreement_number.nil? && @agreement_number.to_s.length > 20
      return false if !@renter_name.nil? && @renter_name.to_s.length > 20
      return false if !@return_city.nil? && @return_city.to_s.length > 20
      return false if !@rental_class_id.nil? && @rental_class_id.to_s.length > 6
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] agreement_number Value to be assigned
    def agreement_number=(agreement_number)
      if !agreement_number.nil? && agreement_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "agreement_number", the character length must be smaller than or equal to 20.'
      end

      @agreement_number = agreement_number
    end

    # Custom attribute writer method with validation
    # @param [Object] renter_name Value to be assigned
    def renter_name=(renter_name)
      if !renter_name.nil? && renter_name.to_s.length > 20
        fail ArgumentError, 'invalid value for "renter_name", the character length must be smaller than or equal to 20.'
      end

      @renter_name = renter_name
    end

    # Custom attribute writer method with validation
    # @param [Object] return_city Value to be assigned
    def return_city=(return_city)
      if !return_city.nil? && return_city.to_s.length > 20
        fail ArgumentError, 'invalid value for "return_city", the character length must be smaller than or equal to 20.'
      end

      @return_city = return_city
    end

    # Custom attribute writer method with validation
    # @param [Object] rental_class_id Value to be assigned
    def rental_class_id=(rental_class_id)
      if !rental_class_id.nil? && rental_class_id.to_s.length > 6
        fail ArgumentError, 'invalid value for "rental_class_id", the character length must be smaller than or equal to 6.'
      end

      @rental_class_id = rental_class_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agreement_number == o.agreement_number &&
          renter_name == o.renter_name &&
          return_city == o.return_city &&
          return_date == o.return_date &&
          pickup_date == o.pickup_date &&
          rental_class_id == o.rental_class_id &&
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
      [agreement_number, renter_name, return_city, return_date, pickup_date, rental_class_id, extra_charges, no_show_indicator].hash
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
