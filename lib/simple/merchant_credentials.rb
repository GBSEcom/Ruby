module SimpleClient
	class MerchantCredentials
		attr_reader :api_secret, :api_key

		def initialize(api_secret, api_key)
			@api_secret = api_secret
			@api_key = api_key
		end
	end
end