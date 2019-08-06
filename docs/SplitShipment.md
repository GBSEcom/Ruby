# OpenapiClient::SplitShipment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total_count** | **Integer** | Total count of the shipment, can be set at preauth or the first postauth. | [optional] 
**final_shipment** | **Boolean** | Indicates whether the transaction is the final shipment. | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SplitShipment.new(total_count: 5,
                                 final_shipment: null)
```


