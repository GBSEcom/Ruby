=begin
#Payment Gateway API Specification.

#The documentation here is designed to provide all of the technical guidance required to consume and integrate with our APIs for payment processing. To learn more about our APIs please visit https://docs.firstdata.com/org/gateway.

The version of the OpenAPI document: 21.3.0.20210608.001

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.1.1

=end

require 'date'

module OpenapiClient
  # Level 2 data for monitoring and controlling corporate expenditures.
  class PurchaseCardsLevel2
    # Customer code/customer reference ID. The max length supported for Visa is 12 and MasterCard is 17.
    attr_accessor :customer_reference_id

    # Purchase identifier/merchant-related data.
    attr_accessor :supplier_invoice_number

    # Merchant VAT registration/single business reference number/merchant tax ID or corporation VAT number.
    attr_accessor :supplier_vat_registration_number

    attr_accessor :total_discount_amount_and_rate

    attr_accessor :vat_shipping_amount_and_rate

    attr_accessor :duty_amount_and_rate

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'customer_reference_id' => :'customerReferenceID',
        :'supplier_invoice_number' => :'supplierInvoiceNumber',
        :'supplier_vat_registration_number' => :'supplierVATRegistrationNumber',
        :'total_discount_amount_and_rate' => :'totalDiscountAmountAndRate',
        :'vat_shipping_amount_and_rate' => :'vatShippingAmountAndRate',
        :'duty_amount_and_rate' => :'dutyAmountAndRate'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'customer_reference_id' => :'String',
        :'supplier_invoice_number' => :'String',
        :'supplier_vat_registration_number' => :'String',
        :'total_discount_amount_and_rate' => :'AdditionalAmountRate',
        :'vat_shipping_amount_and_rate' => :'AdditionalAmountRate',
        :'duty_amount_and_rate' => :'AdditionalAmountRate'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::PurchaseCardsLevel2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::PurchaseCardsLevel2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_reference_id')
        self.customer_reference_id = attributes[:'customer_reference_id']
      end

      if attributes.key?(:'supplier_invoice_number')
        self.supplier_invoice_number = attributes[:'supplier_invoice_number']
      end

      if attributes.key?(:'supplier_vat_registration_number')
        self.supplier_vat_registration_number = attributes[:'supplier_vat_registration_number']
      end

      if attributes.key?(:'total_discount_amount_and_rate')
        self.total_discount_amount_and_rate = attributes[:'total_discount_amount_and_rate']
      end

      if attributes.key?(:'vat_shipping_amount_and_rate')
        self.vat_shipping_amount_and_rate = attributes[:'vat_shipping_amount_and_rate']
      end

      if attributes.key?(:'duty_amount_and_rate')
        self.duty_amount_and_rate = attributes[:'duty_amount_and_rate']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@customer_reference_id.nil? && @customer_reference_id.to_s.length > 17
        invalid_properties.push('invalid value for "customer_reference_id", the character length must be smaller than or equal to 17.')
      end

      if !@supplier_invoice_number.nil? && @supplier_invoice_number.to_s.length > 30
        invalid_properties.push('invalid value for "supplier_invoice_number", the character length must be smaller than or equal to 30.')
      end

      if !@supplier_vat_registration_number.nil? && @supplier_vat_registration_number.to_s.length > 30
        invalid_properties.push('invalid value for "supplier_vat_registration_number", the character length must be smaller than or equal to 30.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer_reference_id.nil? && @customer_reference_id.to_s.length > 17
      return false if !@supplier_invoice_number.nil? && @supplier_invoice_number.to_s.length > 30
      return false if !@supplier_vat_registration_number.nil? && @supplier_vat_registration_number.to_s.length > 30
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_reference_id Value to be assigned
    def customer_reference_id=(customer_reference_id)
      if !customer_reference_id.nil? && customer_reference_id.to_s.length > 17
        fail ArgumentError, 'invalid value for "customer_reference_id", the character length must be smaller than or equal to 17.'
      end

      @customer_reference_id = customer_reference_id
    end

    # Custom attribute writer method with validation
    # @param [Object] supplier_invoice_number Value to be assigned
    def supplier_invoice_number=(supplier_invoice_number)
      if !supplier_invoice_number.nil? && supplier_invoice_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "supplier_invoice_number", the character length must be smaller than or equal to 30.'
      end

      @supplier_invoice_number = supplier_invoice_number
    end

    # Custom attribute writer method with validation
    # @param [Object] supplier_vat_registration_number Value to be assigned
    def supplier_vat_registration_number=(supplier_vat_registration_number)
      if !supplier_vat_registration_number.nil? && supplier_vat_registration_number.to_s.length > 30
        fail ArgumentError, 'invalid value for "supplier_vat_registration_number", the character length must be smaller than or equal to 30.'
      end

      @supplier_vat_registration_number = supplier_vat_registration_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_reference_id == o.customer_reference_id &&
          supplier_invoice_number == o.supplier_invoice_number &&
          supplier_vat_registration_number == o.supplier_vat_registration_number &&
          total_discount_amount_and_rate == o.total_discount_amount_and_rate &&
          vat_shipping_amount_and_rate == o.vat_shipping_amount_and_rate &&
          duty_amount_and_rate == o.duty_amount_and_rate
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_reference_id, supplier_invoice_number, supplier_vat_registration_number, total_discount_amount_and_rate, vat_shipping_amount_and_rate, duty_amount_and_rate].hash
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
