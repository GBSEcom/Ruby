module FirstData
	class Params
		include ModelUtils

		ATTR = [
			:PaReq,
			:TermUrl,
			:MD
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end