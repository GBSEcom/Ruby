# OpenapiClient::ReceiptLine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**end_of_line** | **Boolean** | Flag to indicate if the text ends at the end of this receipt line. | [optional] [default to true]
**text** | **String** | Text that represents a line of the actual receipt data, that can be printed out. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ReceiptLine.new(end_of_line: true,
                                 text:           MerchantName          )
```


