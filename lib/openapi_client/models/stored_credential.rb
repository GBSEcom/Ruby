=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

OpenAPI spec version: 6.6.0.20190329.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: unset

=end

require 'date'

module OpenapiClient
  # Object for sending stored credentials.
  class StoredCredential
    # Indicates if the transaction is first or subsequent. Valid values are 'FIRST' and 'SUBSEQUENT'.
    attr_accessor :sequence

    # Indicates if the transaction is scheduled or part of an installment.
    attr_accessor :scheduled

    # The transaction ID received from schemes for the initial transaction. Required if sequence is 'SUBSEQUENT'.
    attr_accessor :referenced_scheme_transaction_id

    # Indicates whether it is a merchant-initiated or explicitly consented to by card holder. Valid values are 'MERCHANT' and 'CARDHOLDER'.
    attr_accessor :initiator

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
        :'sequence' => :'sequence',
        :'scheduled' => :'scheduled',
        :'referenced_scheme_transaction_id' => :'referencedSchemeTransactionId',
        :'initiator' => :'initiator'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'sequence' => :'String',
        :'scheduled' => :'BOOLEAN',
        :'referenced_scheme_transaction_id' => :'String',
        :'initiator' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'sequence')
        self.sequence = attributes[:'sequence']
      end

      if attributes.has_key?(:'scheduled')
        self.scheduled = attributes[:'scheduled']
      end

      if attributes.has_key?(:'referencedSchemeTransactionId')
        self.referenced_scheme_transaction_id = attributes[:'referencedSchemeTransactionId']
      end

      if attributes.has_key?(:'initiator')
        self.initiator = attributes[:'initiator']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @sequence.nil?
        invalid_properties.push('invalid value for "sequence", sequence cannot be nil.')
      end

      if @scheduled.nil?
        invalid_properties.push('invalid value for "scheduled", scheduled cannot be nil.')
      end

      if !@referenced_scheme_transaction_id.nil? && @referenced_scheme_transaction_id.to_s.length > 40
        invalid_properties.push('invalid value for "referenced_scheme_transaction_id", the character length must be smaller than or equal to 40.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @sequence.nil?
      sequence_validator = EnumAttributeValidator.new('String', ['FIRST', 'SUBSEQUENT'])
      return false unless sequence_validator.valid?(@sequence)
      return false if @scheduled.nil?
      return false if !@referenced_scheme_transaction_id.nil? && @referenced_scheme_transaction_id.to_s.length > 40
      initiator_validator = EnumAttributeValidator.new('String', ['MERCHANT', 'CARDHOLDER'])
      return false unless initiator_validator.valid?(@initiator)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sequence Object to be assigned
    def sequence=(sequence)
      validator = EnumAttributeValidator.new('String', ['FIRST', 'SUBSEQUENT'])
      unless validator.valid?(sequence)
        fail ArgumentError, 'invalid value for "sequence", must be one of #{validator.allowable_values}.'
      end
      @sequence = sequence
    end

    # Custom attribute writer method with validation
    # @param [Object] referenced_scheme_transaction_id Value to be assigned
    def referenced_scheme_transaction_id=(referenced_scheme_transaction_id)
      if !referenced_scheme_transaction_id.nil? && referenced_scheme_transaction_id.to_s.length > 40
        fail ArgumentError, 'invalid value for "referenced_scheme_transaction_id", the character length must be smaller than or equal to 40.'
      end

      @referenced_scheme_transaction_id = referenced_scheme_transaction_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] initiator Object to be assigned
    def initiator=(initiator)
      validator = EnumAttributeValidator.new('String', ['MERCHANT', 'CARDHOLDER'])
      unless validator.valid?(initiator)
        fail ArgumentError, 'invalid value for "initiator", must be one of #{validator.allowable_values}.'
      end
      @initiator = initiator
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          sequence == o.sequence &&
          scheduled == o.scheduled &&
          referenced_scheme_transaction_id == o.referenced_scheme_transaction_id &&
          initiator == o.initiator
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [sequence, scheduled, referenced_scheme_transaction_id, initiator].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
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
      when :BOOLEAN
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
        temp_model = OpenapiClient.const_get(type).new
        temp_model.build_from_hash(value)
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
