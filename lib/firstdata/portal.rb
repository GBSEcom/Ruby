module FirstData
	class Portal
		attr_reader :config

		def initialize(config)
			if config.respond_to?(:keys)
				@config = FirstData::Config.new(config)
			elsif config.is_a?(FirstData::Config)
				@config = config
			else
				raise ArgumentError.new("Portal requires config hash or FirstData::Config object")
			end
		end

		# Generate access token for user authentication
		def access_token
			AccesTokenPortal.new(self)
		end
		
		# Performm, update, or query a transaction
		def transaction
			TransactionPortal.new(self)
		end

		# Generate or retrieve signing requests for wallet payments
		def certificate
			CertificatePortal.new(self)
		end

		# Decrypt wallet payloads for outside payment processors
		def wallet
			WalletDecryptionPortal.new(self)
		end
	end
end