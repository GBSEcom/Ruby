# OpenapiClient::PaymentMethod

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | The type of payment method. Note that PayPal can only process a &#39;CREDIT&#39; transaction. Note that for requests we are now supporting only PAYMENT_CARD, SEPA, PAYPAL, ALIPAY. All this types are supported for response. | 
**payment_card** | [**PaymentCard**](PaymentCard.md) |  | [optional] 
**payment_token** | [**PaymentTokenization**](PaymentTokenization.md) |  | [optional] 
**sepa** | [**Sepa**](Sepa.md) |  | [optional] 
**pay_pal** | [**PayPal**](PayPal.md) |  | [optional] 
**ali_pay** | [**AliPay**](AliPay.md) |  | [optional] 
**china_domestic** | [**ChinaDomestic**](ChinaDomestic.md) |  | [optional] 


