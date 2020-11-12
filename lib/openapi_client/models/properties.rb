=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 6.14.0.20201015.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Object contains font and color properties.
  class Properties
    attr_accessor :font_face

    # Font size property.
    attr_accessor :font_size

    attr_accessor :font_weight

    # Hexadecimal color value.
    attr_accessor :font_color

    # Hexadecimal color value.
    attr_accessor :color

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'font_face' => :'fontFace',
        :'font_size' => :'fontSize',
        :'font_weight' => :'fontWeight',
        :'font_color' => :'fontColor',
        :'color' => :'color'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'font_face' => :'FontFace',
        :'font_size' => :'String',
        :'font_weight' => :'FontWeight',
        :'font_color' => :'String',
        :'color' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Properties` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Properties`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'font_face')
        self.font_face = attributes[:'font_face']
      end

      if attributes.key?(:'font_size')
        self.font_size = attributes[:'font_size']
      end

      if attributes.key?(:'font_weight')
        self.font_weight = attributes[:'font_weight']
      end

      if attributes.key?(:'font_color')
        self.font_color = attributes[:'font_color']
      end

      if attributes.key?(:'color')
        self.color = attributes[:'color']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      if !@font_color.nil? && @font_color !~ pattern
        invalid_properties.push("invalid value for \"font_color\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      if !@color.nil? && @color !~ pattern
        invalid_properties.push("invalid value for \"color\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@font_color.nil? && @font_color !~ Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      return false if !@color.nil? && @color !~ Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] font_color Value to be assigned
    def font_color=(font_color)
      pattern = Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      if !font_color.nil? && font_color !~ pattern
        fail ArgumentError, "invalid value for \"font_color\", must conform to the pattern #{pattern}."
      end

      @font_color = font_color
    end

    # Custom attribute writer method with validation
    # @param [Object] color Value to be assigned
    def color=(color)
      pattern = Regexp.new(/(^(0[xX]){1}[A-Fa-f0-9]+$)|(^#[A-Fa-f0-9]{6}$)/)
      if !color.nil? && color !~ pattern
        fail ArgumentError, "invalid value for \"color\", must conform to the pattern #{pattern}."
      end

      @color = color
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          font_face == o.font_face &&
          font_size == o.font_size &&
          font_weight == o.font_weight &&
          font_color == o.font_color &&
          color == o.color
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [font_face, font_size, font_weight, font_color, color].hash
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
