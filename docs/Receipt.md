# OpenapiClient::Receipt

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Defines the consumer of the receipt (e.g. cardholder, merchant). | 
**data** | [**Array&lt;ReceiptLine&gt;**](ReceiptLine.md) | Array of formatted lines that represents the actual receipt data, that can be printed out. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Receipt.new(type: merchant,
                                 data: [{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;          MerchantName          &quot;},{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;--------------------------------&quot;}])
```


