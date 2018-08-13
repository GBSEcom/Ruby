module FirstData
	class WalletDecryptionPortal

		def initialize(portal)
			@config = portal.config
		end
		
		def decrypt(args)
			process(ApplePay.new(args))
		end

		def process(body, path="")
			_process("/certificates" + path, body)
		end

		def _process(path, body=nil)
			repsonse = @config.http.post(@config.base_url + path, body)
			parse_response(response)
		end

		def parse_response(response)
			raise ArgumentError.new(response.message) if response.code != "200"
			CertificateCreationResponse.new(JSON.parse(response.body))
		end
	end
end 