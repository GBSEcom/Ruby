# OpenapiClient::ExchangeRateDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**inquiry_rate_id** | **String** | Inquiry rate ID. | [optional] 
**foreign_currency** | **String** | Foreign currency in alphabetic ISO 4217 currency code format. | [optional] 
**foreign_amount** | **String** | Foreign amount. | [optional] 
**exchange_rate** | **String** | Exchange rate. | [optional] 
**dcc_offered** | **Boolean** | Dcc offered. | [optional] 
**exchange_rate_source_timestamp** | **String** | Exchange rate source timestamp. The used format is \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX\&quot; | [optional] 
**expiration_timestamp** | **String** | Expiration timestamp. The used format is \&quot;yyyy-MM-dd&#39;T&#39;HH:mm:ss.SSSXXX\&quot; | [optional] 
**margin_rate_percentage** | **String** | Margin rate percentage. | [optional] 
**exchange_rate_source_name** | **String** | Exchange rate source name. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ExchangeRateDetails.new(inquiry_rate_id: 49150,
                                 foreign_currency: AUD,
                                 foreign_amount: 130.33,
                                 exchange_rate: 1.2968,
                                 dcc_offered: true,
                                 exchange_rate_source_timestamp: 2018-12-05T14:13:00.000-05:00,
                                 expiration_timestamp: 2018-12-05T15:13:00.000-05:00,
                                 margin_rate_percentage: 3,
                                 exchange_rate_source_name: REUTERS WHOLESALE INTERBANK)
```


