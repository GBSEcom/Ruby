require "json"
require "openssl"
require "base64"
require "securerandom"
require "date"

module SimpleClient
	class Signature
	
		ATTR = [
			:api_key,
			:api_secret,
			:digest
		]

		attr_reader :client_request_id, :timestamp
		
		def initialize(params)
			ATTR.each { |attr| instance_variable_set("@#{attr}", params[attr]) if params[attr] }
			@digest = "sha256" if !@digest
			@client_request_id = SecureRandom.uuid
			@timestamp = DateTime.now.strftime("%Q")
		end

		def sign(payload=nil)
			data = @api_key + @client_request_id + @timestamp
			data += jsonify(payload) if payload
			hmac = OpenSSL::HMAC.hexdigest(@digest, @api_secret, data)
			Base64.urlsafe_encode64(hmac)
		end

		def jsonify(model)
			return model if model.nil? || model.is_a?(String)
			local_body = nil
			if model.is_a?(Array)
				local_body = model.map{|m| object_to_hash(m) }
			else
				local_body = object_to_hash(model)
			end
			local_body.to_json
		end
	
		def object_to_hash(obj)
			if obj.respond_to?(:to_hash)
		 		obj.to_hash
			else
				obj
			end
		end
		
	end
end