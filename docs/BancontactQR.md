# OpenapiClient::BancontactQR

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_routing_means** | **String** | Transaction Routing Means. | 
**issuer_customer_reference** | **String** | Issuer Customer Reference. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::BancontactQR.new(transaction_routing_means: QR Code,
                                 issuer_customer_reference: 303123403)
```


