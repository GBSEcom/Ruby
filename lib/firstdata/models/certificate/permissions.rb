module FirstData
	class Permissions
		include ModelUtils

		ATTR = [
			:auth_type,
			:auth_id
		]
		
		attr_reader *ATTR

		def initialize(params)
			set_attributes(params)
		end
	end
end
