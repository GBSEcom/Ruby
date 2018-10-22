module SimpleClient
	class MerchantCredentials
		attr_reader :api_key, :api_secret

		def initialize(api_key, api_secret)
			@api_secret = api_secret
			@api_key = api_key
		end
	end
end