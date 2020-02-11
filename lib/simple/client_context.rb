module SimpleClient
	class ClientContext
		attr_reader :client, :config, :credentials

		def self.create(credentials)
			return self.new(credentials)
		end

		def initialize(credentials, environment="CERT")
			@config = OpenapiClient::Configuration.new(environment)
			@client = OpenapiClient::ApiClient.new(@config)
			@credentials = credentials
		end
	end
end