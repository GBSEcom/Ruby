# OpenapiClient::SoftDescriptor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dynamic_merchant_name** | **String** | Store \&quot;doing-business-as\&quot; name. | 
**customer_service_number** | **String** | Customer service phone number information that is passed to the issuer (it may appear on the cardholder’s statement) or if merchant wants to pass information that differs from the information stored on our master File. | [optional] 
**mcc** | **String** | The 4-digit merchant category code (MCC). The merchant might be associated with multiple MCCs. In that case the MCC provided here will be the one that better describes the current transaction. | [optional] 
**dynamic_address** | [**Address**](Address.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SoftDescriptor.new(dynamic_merchant_name: Merchant XYZ,
                                 customer_service_number: 9973322990,
                                 mcc: 7311,
                                 dynamic_address: null)
```


