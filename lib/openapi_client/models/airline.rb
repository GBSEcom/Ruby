=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.14.0.20201015.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Additional data specific to the airline industry.
  class Airline
    # The passenger name associated with the transaction.
    attr_accessor :passenger_name

    # The airline ticket number associated with the transaction.
    attr_accessor :ticket_number

    # The carrier that issued the ticket.
    attr_accessor :issuing_carrier

    # The carrier associated with the transaction.
    attr_accessor :carrier_name

    # The IATA code associated with the travel agency.
    attr_accessor :travel_agency_iata_code

    # The business name of the travel agency.
    attr_accessor :travel_agency_name

    # The airline plan number associated with the transaction.
    attr_accessor :airline_plan_number

    # The invoice number used by the airline.
    attr_accessor :airline_invoice_number

    # The reservation system used to create the ticket.
    attr_accessor :reservation_system

    # If the transaction is associated with a restricted class fare.
    attr_accessor :restricted

    # Array containing up to 4 items that describe the route associated with the transaction.
    attr_accessor :travel_route

    # The number of any other tickets associated with the transaction ticket.
    attr_accessor :related_ticket_number

    # Identify the purchase of ancillary goods or services with a false value. If this element is not provided, the transaction is assumed to be a purchase of an airline ticket.
    attr_accessor :ancillary_service_category

    # Identifies if the transaction is a ticket purchase.
    attr_accessor :ticket_purchase

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
        :'passenger_name' => :'passengerName',
        :'ticket_number' => :'ticketNumber',
        :'issuing_carrier' => :'issuingCarrier',
        :'carrier_name' => :'carrierName',
        :'travel_agency_iata_code' => :'travelAgencyIataCode',
        :'travel_agency_name' => :'travelAgencyName',
        :'airline_plan_number' => :'airlinePlanNumber',
        :'airline_invoice_number' => :'airlineInvoiceNumber',
        :'reservation_system' => :'reservationSystem',
        :'restricted' => :'restricted',
        :'travel_route' => :'travelRoute',
        :'related_ticket_number' => :'relatedTicketNumber',
        :'ancillary_service_category' => :'ancillaryServiceCategory',
        :'ticket_purchase' => :'ticketPurchase'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'passenger_name' => :'String',
        :'ticket_number' => :'String',
        :'issuing_carrier' => :'String',
        :'carrier_name' => :'String',
        :'travel_agency_iata_code' => :'String',
        :'travel_agency_name' => :'String',
        :'airline_plan_number' => :'String',
        :'airline_invoice_number' => :'String',
        :'reservation_system' => :'String',
        :'restricted' => :'Boolean',
        :'travel_route' => :'Array<AirlineTravelRoute>',
        :'related_ticket_number' => :'String',
        :'ancillary_service_category' => :'Array<AirlineAncillaryServiceCategory>',
        :'ticket_purchase' => :'Boolean'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Airline` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Airline`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'passenger_name')
        self.passenger_name = attributes[:'passenger_name']
      end

      if attributes.key?(:'ticket_number')
        self.ticket_number = attributes[:'ticket_number']
      end

      if attributes.key?(:'issuing_carrier')
        self.issuing_carrier = attributes[:'issuing_carrier']
      end

      if attributes.key?(:'carrier_name')
        self.carrier_name = attributes[:'carrier_name']
      end

      if attributes.key?(:'travel_agency_iata_code')
        self.travel_agency_iata_code = attributes[:'travel_agency_iata_code']
      end

      if attributes.key?(:'travel_agency_name')
        self.travel_agency_name = attributes[:'travel_agency_name']
      end

      if attributes.key?(:'airline_plan_number')
        self.airline_plan_number = attributes[:'airline_plan_number']
      end

      if attributes.key?(:'airline_invoice_number')
        self.airline_invoice_number = attributes[:'airline_invoice_number']
      end

      if attributes.key?(:'reservation_system')
        self.reservation_system = attributes[:'reservation_system']
      end

      if attributes.key?(:'restricted')
        self.restricted = attributes[:'restricted']
      end

      if attributes.key?(:'travel_route')
        if (value = attributes[:'travel_route']).is_a?(Array)
          self.travel_route = value
        end
      end

      if attributes.key?(:'related_ticket_number')
        self.related_ticket_number = attributes[:'related_ticket_number']
      end

      if attributes.key?(:'ancillary_service_category')
        if (value = attributes[:'ancillary_service_category']).is_a?(Array)
          self.ancillary_service_category = value
        end
      end

      if attributes.key?(:'ticket_purchase')
        self.ticket_purchase = attributes[:'ticket_purchase']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@passenger_name.nil? && @passenger_name.to_s.length > 30
        invalid_properties.push('invalid value for "passenger_name", the character length must be smaller than or equal to 30.')
      end

      if !@ticket_number.nil? && @ticket_number.to_s.length > 20
        invalid_properties.push('invalid value for "ticket_number", the character length must be smaller than or equal to 20.')
      end

      if !@issuing_carrier.nil? && @issuing_carrier.to_s.length > 20
        invalid_properties.push('invalid value for "issuing_carrier", the character length must be smaller than or equal to 20.')
      end

      if !@carrier_name.nil? && @carrier_name.to_s.length > 20
        invalid_properties.push('invalid value for "carrier_name", the character length must be smaller than or equal to 20.')
      end

      if !@travel_agency_iata_code.nil? && @travel_agency_iata_code.to_s.length > 20
        invalid_properties.push('invalid value for "travel_agency_iata_code", the character length must be smaller than or equal to 20.')
      end

      if !@travel_agency_name.nil? && @travel_agency_name.to_s.length > 30
        invalid_properties.push('invalid value for "travel_agency_name", the character length must be smaller than or equal to 30.')
      end

      if !@airline_plan_number.nil? && @airline_plan_number.to_s.length > 2
        invalid_properties.push('invalid value for "airline_plan_number", the character length must be smaller than or equal to 2.')
      end

      if !@airline_invoice_number.nil? && @airline_invoice_number.to_s.length > 6
        invalid_properties.push('invalid value for "airline_invoice_number", the character length must be smaller than or equal to 6.')
      end

      if !@related_ticket_number.nil? && @related_ticket_number.to_s.length > 20
        invalid_properties.push('invalid value for "related_ticket_number", the character length must be smaller than or equal to 20.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@passenger_name.nil? && @passenger_name.to_s.length > 30
      return false if !@ticket_number.nil? && @ticket_number.to_s.length > 20
      return false if !@issuing_carrier.nil? && @issuing_carrier.to_s.length > 20
      return false if !@carrier_name.nil? && @carrier_name.to_s.length > 20
      return false if !@travel_agency_iata_code.nil? && @travel_agency_iata_code.to_s.length > 20
      return false if !@travel_agency_name.nil? && @travel_agency_name.to_s.length > 30
      return false if !@airline_plan_number.nil? && @airline_plan_number.to_s.length > 2
      return false if !@airline_invoice_number.nil? && @airline_invoice_number.to_s.length > 6
      reservation_system_validator = EnumAttributeValidator.new('String', ["START", "TWA", "DELTA", "SABRE", "COVIA_APOLLO", "DR_BLANK", "DER", "TUI"])
      return false unless reservation_system_validator.valid?(@reservation_system)
      return false if !@related_ticket_number.nil? && @related_ticket_number.to_s.length > 20
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] passenger_name Value to be assigned
    def passenger_name=(passenger_name)
      if !passenger_name.nil? && passenger_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "passenger_name", the character length must be smaller than or equal to 30.'
      end

      @passenger_name = passenger_name
    end

    # Custom attribute writer method with validation
    # @param [Object] ticket_number Value to be assigned
    def ticket_number=(ticket_number)
      if !ticket_number.nil? && ticket_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "ticket_number", the character length must be smaller than or equal to 20.'
      end

      @ticket_number = ticket_number
    end

    # Custom attribute writer method with validation
    # @param [Object] issuing_carrier Value to be assigned
    def issuing_carrier=(issuing_carrier)
      if !issuing_carrier.nil? && issuing_carrier.to_s.length > 20
        fail ArgumentError, 'invalid value for "issuing_carrier", the character length must be smaller than or equal to 20.'
      end

      @issuing_carrier = issuing_carrier
    end

    # Custom attribute writer method with validation
    # @param [Object] carrier_name Value to be assigned
    def carrier_name=(carrier_name)
      if !carrier_name.nil? && carrier_name.to_s.length > 20
        fail ArgumentError, 'invalid value for "carrier_name", the character length must be smaller than or equal to 20.'
      end

      @carrier_name = carrier_name
    end

    # Custom attribute writer method with validation
    # @param [Object] travel_agency_iata_code Value to be assigned
    def travel_agency_iata_code=(travel_agency_iata_code)
      if !travel_agency_iata_code.nil? && travel_agency_iata_code.to_s.length > 20
        fail ArgumentError, 'invalid value for "travel_agency_iata_code", the character length must be smaller than or equal to 20.'
      end

      @travel_agency_iata_code = travel_agency_iata_code
    end

    # Custom attribute writer method with validation
    # @param [Object] travel_agency_name Value to be assigned
    def travel_agency_name=(travel_agency_name)
      if !travel_agency_name.nil? && travel_agency_name.to_s.length > 30
        fail ArgumentError, 'invalid value for "travel_agency_name", the character length must be smaller than or equal to 30.'
      end

      @travel_agency_name = travel_agency_name
    end

    # Custom attribute writer method with validation
    # @param [Object] airline_plan_number Value to be assigned
    def airline_plan_number=(airline_plan_number)
      if !airline_plan_number.nil? && airline_plan_number.to_s.length > 2
        fail ArgumentError, 'invalid value for "airline_plan_number", the character length must be smaller than or equal to 2.'
      end

      @airline_plan_number = airline_plan_number
    end

    # Custom attribute writer method with validation
    # @param [Object] airline_invoice_number Value to be assigned
    def airline_invoice_number=(airline_invoice_number)
      if !airline_invoice_number.nil? && airline_invoice_number.to_s.length > 6
        fail ArgumentError, 'invalid value for "airline_invoice_number", the character length must be smaller than or equal to 6.'
      end

      @airline_invoice_number = airline_invoice_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reservation_system Object to be assigned
    def reservation_system=(reservation_system)
      validator = EnumAttributeValidator.new('String', ["START", "TWA", "DELTA", "SABRE", "COVIA_APOLLO", "DR_BLANK", "DER", "TUI"])
      unless validator.valid?(reservation_system)
        fail ArgumentError, "invalid value for \"reservation_system\", must be one of #{validator.allowable_values}."
      end
      @reservation_system = reservation_system
    end

    # Custom attribute writer method with validation
    # @param [Object] related_ticket_number Value to be assigned
    def related_ticket_number=(related_ticket_number)
      if !related_ticket_number.nil? && related_ticket_number.to_s.length > 20
        fail ArgumentError, 'invalid value for "related_ticket_number", the character length must be smaller than or equal to 20.'
      end

      @related_ticket_number = related_ticket_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          passenger_name == o.passenger_name &&
          ticket_number == o.ticket_number &&
          issuing_carrier == o.issuing_carrier &&
          carrier_name == o.carrier_name &&
          travel_agency_iata_code == o.travel_agency_iata_code &&
          travel_agency_name == o.travel_agency_name &&
          airline_plan_number == o.airline_plan_number &&
          airline_invoice_number == o.airline_invoice_number &&
          reservation_system == o.reservation_system &&
          restricted == o.restricted &&
          travel_route == o.travel_route &&
          related_ticket_number == o.related_ticket_number &&
          ancillary_service_category == o.ancillary_service_category &&
          ticket_purchase == o.ticket_purchase
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [passenger_name, ticket_number, issuing_carrier, carrier_name, travel_agency_iata_code, travel_agency_name, airline_plan_number, airline_invoice_number, reservation_system, restricted, travel_route, related_ticket_number, ancillary_service_category, ticket_purchase].hash
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
