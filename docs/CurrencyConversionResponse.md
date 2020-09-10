# OpenapiClient::CurrencyConversionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dcc_applied** | **Boolean** | Dynamic Currency Conversion Applied. | [optional] 
**exchange_rate_details** | [**ExchangeRateDetails**](ExchangeRateDetails.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CurrencyConversionResponse.new(dcc_applied: true,
                                 exchange_rate_details: null)
```


