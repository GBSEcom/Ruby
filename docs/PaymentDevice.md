# OpenapiClient::PaymentDevice

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**device_type** | **String** | The data format. | 
**data** | **String** | Data from device containing, at a minimum, a transaction-unique key serial number (KSN) and track 2 card data. | 
**security_code** | **String** | Card verification value/number. | [optional] 
**cardholder_name** | **String** | Name of cardholder. | [optional] 
**card_function** | [**CardFunction**](CardFunction.md) |  | [optional] 
**brand** | **String** | The card brand. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentDevice.new(device_type: SWIPE,
                                 data: 02A600C0170018008292;5424********1732&#x3D;1810?*B73CD8C26233D4FFEC5500ED394439D97DDA5F530942D21D0000000000000000000000000000000000000000363434543035353734326299492410027300000260DC03,
                                 security_code: 977,
                                 cardholder_name: null,
                                 card_function: null,
                                 brand: VISA)
```


