# OpenapiClient::EncryptedApplePay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | The encrypted wallet payload. | 
**header** | [**EncryptedApplePayHeader**](EncryptedApplePayHeader.md) |  | 
**signature** | **String** | Signature of the payment and header data. | 
**version** | **String** | Version information about the payment token. | [optional] 
**application_data** | **String** | Base64-encoded value of PKPaymentRequest. Required only if applicationDataHash is present. | [optional] 
**merchant_id** | **String** | The merchant ID assigned by the wallet provider. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EncryptedApplePay.new(data: NdCmVw5nMjQq746HYc/VbiZcQZ/zFzeEcM1wVMPruEG4/C/EFhobSkwB5JZJU+t6JuDVXUBiRYuOOC8FTYd+qIm6ckktid9aiGh0f2NDP0INSr59QXmr389RonyUfRYKnBmwsh5UqtI7Iz0AmMtl1PWMdxcCewtjuffs79ahTnFgXsRN+ynuhyDfbdRanlTnYKGoTeVh9eJfheJ1wquO+jiGj+npJ/Oh9bAdlw7iEHrYO2aUkgaMyXZ3foXRAJeimQVQS1y8lU1PPq62zpPrFzidbnnU5fK25pvGFjOdmLsBELZPk5thQEkSaA9p1LSKzWSesHhi0BxZaFPXSA6ANXvYIU2AT0lG+0O0w1URA5Sinyj3YDZVqjuir6rzNN9bB2U2nTQnKMbuGLMS20K8fUKZN/YLJh+AtE6J69+VVSU95mE1nOb8hyabz6E5RmnC5Ze2k6F/hQ75ig&#x3D;&#x3D;,
                                 header: null,
                                 signature: MIAGCSqGSIb3DQEHAqCAMIACAQExDzANBglghkgBZQMEAgEFADCABgkqhkiG9w0BBwEAAKCAMIIB0zCCAXkCAQEwCQYHKoZIzj0EATB2MQswCQYDVQQGEwJVUzELMAkGA1UECAwCTkoxFDASBgNVBAcMC0plcnNleSBDaXR5MRMwEQYDVQQKDApGaXJzdCBEYXRhMRIwEAYDVQQLDAlGaXJzdCBBUEkxGzAZBgNVBAMMEmQxZHZ0bDEwMDAuMWRjLmNvbTAeFw0xNTA3MjMxNjQxMDNaFw0xOTA3MjIxNjQxMDNaMHYxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJOSjEUMBIGA1UEBwwLSmVyc2V5IENpdHkxEzARBgNVBAoMCkZpcnN0IERhdGExEjAQBgNVBAsMCUZpcnN0IEFQSTEbMBkGA1UEAwwSZDFkdnRsMTAwMC4xZGMuY29tMFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAErnHhPM18HFbOomJMUiLiPL7nrJuWvfPy0Gg3xsX3m8q0oWhTs1QcQDTT+TR3yh4sDRPqXnsTUwcvbrCOzdUEeTAJBgcqhkjOPQQBA0kAMEYCIQDrC1z2JTx1jZPvllpnkxPEzBGk9BhTCkEB58j/Cv+sXQIhAKGongoz++3tJroo1GxnwvzK/Qmc4P1K2lHoh9biZeNhAAAxggFUMIIBUAIBATB7MHYxCzAJBgNVBAYTAlVTMQswCQYDVQQIDAJOSjEUMBIGA1UEBwwLSmVyc2V5IENpdHkxEzARBgNVBAoMCkZpcnN0IERhdGExEjAQBgNVBAsMCUZpcnN0IEFQSTEbMBkGA1UEAwwSZDFkdnRsMTAwMC4xZGMuY29tAgEBMA0GCWCGSAFlAwQCAQUAoGkwGAYJKoZIhvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTUwODEyMTczMTAwWjAvBgkqhkiG9w0BCQQxIgQgJyjKLiGQo3I1ZbfHSmF2XCZ8dNlcZyohziuXO48EKwgwCgYIKoZIzj0EAwIESDBGAiEAznKDYEz9MsC+r1g6e4LR1DTaQOl+X2rVNkWnKDpc1EQCIQCmK48ChHoz4HWnUnW5XqaGWOUXKHQvUgeqFr/jgBUzegAAAAAAAA&#x3D;&#x3D;,
                                 version: EC_v1,
                                 application_data: VEVTVA&#x3D;&#x3D;,
                                 merchant_id: order-1)
```


