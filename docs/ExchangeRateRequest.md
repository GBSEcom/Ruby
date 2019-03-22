# OpenapiClient::ExchangeRateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Type of exchange rate inquiry. Valid values are &#39;DCC&#39; and &#39;DYNAMIC_PRICING&#39;. | 
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same app. | [optional] 
**bin** | **String** | A bank identification number (BIN) of the card to be used for DCC. | [optional] 
**base_amount** | **Float** | The original amount of the merchant currency for calculation. | 
**foreign_currency** | **String** | The currency code to convert for Dynamic Pricing. | [optional] 


