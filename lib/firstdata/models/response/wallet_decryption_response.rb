module FirstData
	class WalletDecryptionResponse
		include ModelUtils

		OBJ_ATTR = {
			decrypted_data: DecryptedData
		}
		
		attr_reader *OBJ_ATTR.keys
		def initialize(params)
			set_attributes(params)
		end
	end
end
