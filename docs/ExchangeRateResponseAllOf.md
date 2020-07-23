# OpenapiClient::ExchangeRateResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ipg_transaction_id** | **String** | The response transaction ID. | [optional] 
**request_time** | **String** | Time of the request. | [optional] 
**inquiry_rate_id** | **String** | Inquiry rate ID. | [optional] 
**foreign_currency** | **String** | Foreign currency in alphabetic ISO 4217 currency code format. | [optional] 
**foreign_amount** | **String** | Foreign amount. | [optional] 
**exchange_rate** | **String** | Exchange rate. | [optional] 
**dcc_offered** | **String** | Dcc offered. | [optional] 
**exchange_rate_source_timestamp** | **String** | Exchange rate source timestamp. | [optional] 
**expiration_timestamp** | **String** | Expiration timestamp. | [optional] 
**margin_rate_percentage** | **String** | Margin rate percentage. | [optional] 
**exchange_rate_source_name** | **String** | Exchange rate source name. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ExchangeRateResponseAllOf.new(ipg_transaction_id: 838916029301,
                                 request_time: 2015-06-23T13:46:00.000+02:00,
                                 inquiry_rate_id: 49150,
                                 foreign_currency: AUD,
                                 foreign_amount: 130.33,
                                 exchange_rate: 1.2968,
                                 dcc_offered: true,
                                 exchange_rate_source_timestamp: 2015-06-23T13:46:00.000+02:00,
                                 expiration_timestamp: 2015-06-23T13:46:00.000+02:00,
                                 margin_rate_percentage: 3,
                                 exchange_rate_source_name: REUTERS WHOLESALE INTERBANK)
```

