# OpenapiClient::ReceiptRequestInfo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** | Defines the consumer of the receipt (e.g. cardholder, merchant). | 
**locale** | **String** | The locale of the receipt. The format has to be a well-formed BCP 47 language tag. | [optional] 
**linewidth** | **Integer** | The line width of the receipt. Default will be 32 characters. | [optional] [default to 32]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ReceiptRequestInfo.new(type: merchant,
                                 locale: en-GB,
                                 linewidth: 48)
```


