# OpenapiClient::PrimaryTransactionAdditionalDetails

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_number** | **String** | For FORCED_TICKET only. Stores the six digit reference number you have received as the result of a successful external authorization (e.g. by phone). The Gateway needs this number for uniquely mapping a ForcedTicket transaction to a previously performed external authorization.]  | [optional] 
**comments** | **String** | Comments for the payment | [optional] 
**dynamic_merchant_name** | **String** | The name of sub-merchant for the payment facilitator | [optional] 
**invoice_number** | **String** | Invoice number | [optional] 
**purchase_order_number** | **String** | Purchase order number | [optional] 
**recurring_type** | **String** | Valid values are &#39;FIRST&#39;, &#39;REPEAT&#39; and &#39;STANDING_INSTRUCTION&#39;. | [optional] 
**installment_options** | [**InstallmentOptions**](InstallmentOptions.md) |  | [optional] 
**mcc** | **String** | Use this field to override merchant configured MCC value | [optional] 
**dcc** | [**Dcc**](Dcc.md) |  | [optional] 


