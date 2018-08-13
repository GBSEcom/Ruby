require 'json'
module FirstData
	module ModelUtils

		def set_attributes(params)
			params = clean_params(params)
			
			if self.class.const_defined?("ATTR")
				self.class::ATTR.each do |var_name|
					instance_variable_set("@#{var_name}", params[var_name]) if params[var_name]
				end
			end

			if self.class.const_defined?("OBJ_ATTR")
				self.class::OBJ_ATTR.each do |var_name, class_name|
					instance_variable_set("@#{var_name}", obj_or_hash(params[var_name], class_name)) if params[var_name]
				end
			end
		end

		def clean_params(params)
			cleaned_params = {}
			params.each { |k,v| cleaned_params[to_snake_case(k.to_s).to_sym] = v }
			cleaned_params
		end

		def obj_or_hash(param, object)
			case param
			when Hash
				object.new(param)
			when object
				param
			else	
				raise ArgumentError.new("#{self.class} requires #{object.to_s} object or hash")
			end
		end

		def to_json
			JSON.pretty_generate(self.to_hash, {space: ' ', space_before: '', object_nl: "\r\n"})
		end

		def to_hash
			self_hash = {}
			self.instance_variables.each do |var|
				value = self.instance_variable_get(var)
				if value.respond_to?(:to_hash)
					value = value.to_hash 
				elsif value.is_a?(Array)
					value = value.map{|el| el.to_hash}
				else
					value = value.to_s
				end
				self_hash[to_pascal_case(var.to_s.sub(/^@/, ''))] = value
			end
			self_hash
		end

		def to_snake_case(str)
			str.gsub(/::/, '/').
				gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
				gsub(/([a-z\d])([A-Z])/,'\1_\2').
				tr("-", "_").
				downcase
		end

		def to_pascal_case(str)
			first, rest = str.split('_')[0], str.split('_')[1..-1]
			rest.map(&:capitalize).unshift(first.downcase).join
		end

		def set_list_items(attr_name, obj)
			items = []
			attrs = instance_variable_get("@#{attr_name}") 
			attrs.each{ |item| items << obj.new(item) } if attrs
			instance_variable_set("@#{attr_name}", items) if !items.empty?
		end
	end
end