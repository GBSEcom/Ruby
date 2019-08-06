# OpenapiClient::AdditionalDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comments** | **String** | Comments for the payment. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AdditionalDetails.new(comments: This is a comment,
                                 invoice_number: 551294633441,
                                 purchase_order_number: 1223456)
```


