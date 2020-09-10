# OpenapiClient::Receipt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Defines the consumer of the receipt (e.g. cardholder, merchant). | 
**data** | **Array&lt;String&gt;** | Array of formatted lines that represents the actual receipt data, that can be printed out. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Receipt.new(type: merchant,
                                 data: [&quot;          MerchantName          &quot;,&quot;--------------------------------&quot;])
```


