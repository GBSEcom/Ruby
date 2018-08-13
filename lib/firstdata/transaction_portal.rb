module FirstData
	class TransactionPortal
		
		def initialize(portal)
			@config = portal.config
		end

		# Full or partial capture of an existing transaction
		def capture(args)
			path = "/payments/#{args[trans_id]}/postauth"
			body = SecondaryTransaction.new(args)
			response = @config.http.post(path, body)
			CertificateCreationResponse.new(JSON.parse(response.body))
		end

		# Query existing transaction
		def query(trans_id)
			path = "/payments/#{trans_id}"
			response = @config.http.get(path)
			parse_response(response)
		end

		# Full or partial refund of existing transaction
		def refund(trans_id, args=nil)
			process(SecondaryTransaction.new(args), "/#{args[trans_id]}/return")
		end

		# Update transaction and continue processing
		def update(args)
			process(AuthenticationResponseVerification.new(args), "/#{args[trans_id]}")
		end

		# Reverse existing action on transaction
		def void(trans_id)
			path = "/#{trans_id}/void"
			_process(path)
		end

		def auth(args={})
			process(PrimaryTransaction.new(args.merge(:transactionType => "PRE_AUTH")))
		end

		def credit(args={})
			process(PrimaryTransaction.new(args.merge(:transactionType => "CREDIT")))
		end

		def force(args={})
			process(PrimaryTransaction.new(args.merge(:transactionType => "FORCED_TICKET")))
		end

		def sale(args={})
			process(PrimaryTransaction.new(args.merge(:transactionType => "SALE")))
		end
		
		def process(body="", path="")
			_process("/payments" + path, body)
		end

		def _process(path, body=nil)
			response = @config.http.post(path, body)
			parse_response(response)
		end

		def parse_response(response)
			TransactionResponse.new(JSON.parse(response.body))
		end
	end
end