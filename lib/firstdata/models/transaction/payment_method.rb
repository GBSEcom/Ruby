module FirstData
	class PaymentMethod
		include ModelUtils

		ATTR = [
			:type
		]

		OBJ_ATTR = {
			payment_card: PaymentCard, 
			sepa_direct_debit: SepaDirectDebit, 
			apple_pay: ApplePay
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_attributes(params)
			detect_payment_method if !@type
		end

		def detect_payment_method
			if @payment_card 
				@type = "PAYMENT_CARD"
			elsif @sepa_direct_debit
			 	@type = "SEPA_DIRECT_DEBIT"
			elsif @apple_pay
			 	@type = "APPLE_PAY"
			end
		end
	end
end
