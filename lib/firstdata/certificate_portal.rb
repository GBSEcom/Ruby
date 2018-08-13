module FirstData
	class CertificatePortal

		def initialize(portal)
			@config = portal.config
		end
		
		def request(args)
			process(CertificateRequest.new(args))
		end

		def query
			path = "#{@config.base_url}/certificates"
			response = @config.http.get(path)
			if response.code == "200"
				CertificateInquiryResponse.new(JSON.parse(response.body))
			else
				raise ArgumentError.new(response.message) if response.code != "200"
			end
		end

		def process(body, path="")
			_process("/certificates" + path, body)
		end

		def _process(path, body=nil)
			repsonse = @config.http.post(@config.base_url + path, body)
			parse_response(response)
		end

		def parse_response(response)
			raise ArgumentError.new(response.message) unless response.code == "200"
			CertificateCreationResponse.new(JSON.parse(response.body))
		end
	end
end