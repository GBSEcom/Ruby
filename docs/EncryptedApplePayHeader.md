# OpenapiClient::EncryptedApplePayHeader

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_data_hash** | **String** | Merchant supplied information about the payment request. Contains Base64-encoded SHA256 hash of the applicationData property of the original PKPaymentRequest. Note - applicationData from PaymentData of PKPaymentToken Refer to Apple Pay documentation. | [optional] 
**ephemeral_public_key** | **String** | Temporary key for generating shared secret from a device. | 
**public_key_hash** | **String** | Hash of the X.509 encoded public key bytes of the merchant’s certificate. | 
**transaction_id** | **String** | Transaction identifier, generated on the device. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EncryptedApplePayHeader.new(application_data_hash: 94ee059335e587e501cc4bf90613e0814f00a7b08bc7c648fd865a2af6a22cc2,
                                 ephemeral_public_key: MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEiaU1SbkYTJy/j5L1t51vtGDh4KlNl5MFPWzo/C8r0WcrktWriz5pdRaDVUDvU++KlDu2iuQsd2xSNKJlFscbDQ&#x3D;&#x3D;,
                                 public_key_hash: YmSWN7lj4+A6fVJVPicP8TgS7gI7ougD8rEWB5LXtMM&#x3D;,
                                 transaction_id: 31323334353637)
```


