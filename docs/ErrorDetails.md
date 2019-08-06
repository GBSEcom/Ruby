# OpenapiClient::ErrorDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**field** | **String** | The property or attribute associated with the error. | [optional] 
**message** | **String** | Information specific to a property or attribute. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ErrorDetails.new(field: PaymentCard.number,
                                 message: may not be null)
```


