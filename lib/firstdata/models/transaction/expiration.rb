module FirstData
	class Expiration
		include ModelUtils

		ATTR = [
			:month,
			:year
		]

		attr_reader *ATTR

		def initialize(params)
			filter_expiry_date(params) if params[:expiry_date]
			set_attributes(params)
		end

		def filter_expiry_date(params)
			expiration = params[:expiry_date].to_s
			if expiration.length == 4 
				params[:month] = expiration[0..1]  
				params[:year] = expiration[2..3]
			elsif expiration.length == 3
				params[:month] = "0" + expiration[0]
				params[:year] = expiration[1..2]
			else
				ArgumentError.new("Expiry date must be 3 or 4 characters long")
			end
		end
	end
end
