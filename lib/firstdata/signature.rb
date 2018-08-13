module FirstData
	class Signature

		ATTR = [
			:api_key,
			:api_secret,
			:digest
		]

		def initialize(params)
			ATTR.each { |attr| instance_variable_set("@#{attr}", params[attr]) if params[attr] }
			@digest = "sha256" if !@digest
		end

		def sign(payload=nil)
			data = @api_key + nonce + timestamp
			data += payload.to_json if payload
			hmac = OpenSSL::HMAC.hexdigest(@digest, @api_secret, data)
			Base64.urlsafe_encode64(hmac)
		end

		def nonce
			@nonce ||= SecureRandom.uuid
		end

		def timestamp
			@timestamp ||= DateTime.now.strftime("%Q")
		end
	end
end