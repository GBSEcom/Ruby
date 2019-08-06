# OpenapiClient::EncryptedGooglePay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**EncryptedGooglePayData**](EncryptedGooglePayData.md) |  | 
**signature** | **String** | Signature for verifying that the message comes from Google. The signature is created using ECDSA. | 
**version** | **String** | Identifies under which encryption/signing scheme this message has been created. In this way, the protocol can evolve over time if needed. For Google Payments transactions, this should be set to ECv1. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EncryptedGooglePay.new(data: null,
                                 signature: MEUCIFWTRWUZAOM5nfJC79FtJm56olnbwG4H5uWWxAUWAquiAiEA24j/BcOroeISsdJzYsyoVi8wzu4tnmKw+jdsGfuvPko&#x3D;,
                                 version: ECv1)
```


