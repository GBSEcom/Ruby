module FirstData
	class AuthenticationRedirect
		include ModelUtils

		ATTR = [
			:type,
			:target_url
		]

		OBJ_ATTR = {
			params: Params
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
		end
	end
end