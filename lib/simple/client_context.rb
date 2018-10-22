module SimpleClient
	class ClientContext
		attr_reader :client, :config, :credentials

		def self.create(credentials)
			return self.new(credentials)
		end

		def initialize(credentials)
			@config = SwaggerClient::Configuration.new
			@client = SwaggerClient::ApiClient.new(@config)
			@credentials = credentials
		end
	end
end