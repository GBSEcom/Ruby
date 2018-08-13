module FirstData
	class PrimaryTransaction
		include ModelUtils

		ATTR = [
			:transaction_type,
			:store_id,
			:client_transaction_id,
			:basket_items
		]

		OBJ_ATTR = {
			amount: Amount,
			payment_method: PaymentMethod,
			order: Order,
			additional_details: AdditionalDetails,
			split_shipment: SplitShipment,
			industry_specific_extensions: IndustrySpecificExtensions
		}
		
		attr_reader *ATTR, *OBJ_ATTR.keys

		def initialize(params)
			set_payment_method(params) if not params[:payment_method]
			set_attributes(params)
			set_list_items('basket_items', BasketItem)
		end

		def set_payment_method(params)
			if params[:payment_card]
				params[:payment_method] = PaymentMethod.new(payment_card: params[:payment_card])
			elsif params[:sepa_direct_debit]
				params[:payment_method] = PaymentMethod.new(sepa_direct_debit: params[:sepa_direct_debit])
			elsif params[:apple_pay]
				params[:payment_method] = PaymentMethod.new(apple_pay: params[:apple_pay])	
			end
		end
	end
end
