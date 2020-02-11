# OpenapiClient::DecryptedApplePay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Payment card number. | 
**expiration** | **String** | Card expiration date in MMYYYY format. | 
**currency_code** | **String** | Numeric currency code following ISO 4217 standards. | 
**amount** | **Float** | Amount total. | 
**cardholder_name** | **String** | Name of the cardholder. | 
**brand** | **String** | Card brand. | 
**cryptogram** | **String** | The wallet cryptogram from the decrypted data. | 
**eci_indicator** | **String** | The ECI indicator from the decrypted data. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DecryptedApplePay.new(account_number: 4111111111111111,
                                 expiration: 012040,
                                 currency_code: 840,
                                 amount: 10.24,
                                 cardholder_name: John Doe,
                                 brand: VISA,
                                 cryptogram: BB81SRsADvooHCUcDogjMAACAAA&#x3D;,
                                 eci_indicator: 05)
```


