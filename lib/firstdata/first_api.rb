class FirstAPI
	SERVER = "http://firstapi-dev.pjknhgyuhb.us-east-1.elasticbeanstalk.com"

	def initialize(params = {})
		@app_id = params[:app_id]
		@api_key = params[:api_key]
		@query_hash = {"MODE" => params[:mode]}
		@hash_type = "sha256"
	end

	def sale(params={})
		@path = "payment"
		@query_hash[:total] = params[:amount]
		@query_hash[:currency] = params[:currency] || "USD"
	end

	def set_cc_info(params={})
		@query_hash["type"] = "paymentCard"
		@query_hash["number"] = params[:cc_number] || ""
		@query_hash["expiryDate"] = params[:cc_expiration] || ""
		@query_hash["CVCVV2"] = params[:cvv2] || ""
	end

	def send
		# generate time stamp
		# message signature

		uri = URI.parse(SERVER)
		ua = Net::HTTP.new(uri.host, uri.port)

	    queryheaders = {
	      "Content-Type" => "application/json",
	      "REQUEST_UUID" => "bogus_value_1",
	      "App-Id" => @app_id,
	      "Auth-Type" => "bogus_value_3",
	      "Auth-Id" => "bogus_value_4",
	    }

	    request = Net::HTTP::Post.new(uri.host)

	    queryheaders.each do |k,v|
	    	request[k] = v
	    end

		response = Net::HTTP.start(uri.host, uri.port) do |http|
			http.request(request)
		end
	end

	def create_message_signature
		api_key = @api_key
		api_secret = "<Your Consumer Secret>"
		client_request_id = create_client_request_id
		payload = create_payload
		data = 
		OpenSSL::HMAC.hexdigest(@hash_type, @api_key, data)

		"bogus value"
	end


	def build_query_headers
		{
	      "Content-Type" => "application/json",
	      "Api-Key" => @api_key,
	      "Client-Request-Id" => create_client_request_id, # Client-generated ID for request tracking and signature creation, unique per request, this is also used to as idem key. We recommend 128-bit UUID format. Example ‘30dd879c-ee2f-11db-8314-0800200c9a66’
	      "Timestamp" => create_timestamp,
	      "Message-Signature" => create_message_signature
	    }	
	end

	def create_client_request_id
		"bogus_value_3"
	end

	def create_timestamp
		Time.now.to_i
	end
	
	def create_payload # polymorphic
		# "<Post: Request Body; Get: empty string>"
		""
	end
end