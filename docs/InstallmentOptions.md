# OpenapiClient::InstallmentOptions

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number_of_installments** | **Integer** | Number of installments for a sale transaction if the customer pays the total amount in multiple transactions. | [optional] 
**installments_interest** | **BOOLEAN** | Indicates whether the installment interest amount has been applied. | [optional] 
**installment_delay_months** | **Integer** | The number of months the first installment payment will be delayed. | [optional] 
**recurring_type** | **String** | The type of recurring payment. | [optional] 
**merchant_advice_code_supported** | **BOOLEAN** | Indicates if the merchant supports merchant advice code (MAC) in order to receive table 55 code for a declined recurring transaction. | [optional] 


