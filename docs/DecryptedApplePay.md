# OpenapiClient::DecryptedApplePay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_number** | **String** | Payment card number. | 
**expiration** | **String** | Card expiration date in MMYYYY format. | 
**cardholder_name** | **String** | Name of the cardholder. | [optional] 
**brand** | **String** | Card brand. | [optional] 
**cryptogram** | **String** | The wallet cryptogram from the decrypted data. | 
**eci_indicator** | **String** | The ECI indicator from the decrypted data. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::DecryptedApplePay.new(account_number: 4111111111111111,
                                 expiration: 012040,
                                 cardholder_name: John Doe,
                                 brand: VISA,
                                 cryptogram: BB81SRsADvooHCUcDogjMAACAAA&#x3D;,
                                 eci_indicator: 05)
```


