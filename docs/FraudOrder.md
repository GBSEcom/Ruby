# OpenapiClient::FraudOrder

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ship_to_address** | [**ShipToAddress**](ShipToAddress.md) |  | [optional] 
**items** | [**Array&lt;FraudOrderItems&gt;**](FraudOrderItems.md) | The list of items included in the order. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the order that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudOrder.new(ship_to_address: null,
                                 items: [{&quot;id&quot;:&quot;PRODCODE1&quot;,&quot;name&quot;:&quot;The Art of Computer Programming&quot;,&quot;quantity&quot;:&quot;litre&quot;,&quot;unit&quot;:10.23,&quot;unitPrice&quot;:{&quot;value&quot;:7300,&quot;currency&quot;:&quot;USD&quot;},&quot;categories&quot;:&quot;[[\&quot;Books\&quot;, \&quot;Computers &amp; Technology\&quot;, \&quot;Programming\&quot;], [\&quot;Books\&quot;, \&quot;Text Books\&quot;, \&quot;Computer Science\&quot;]]&quot;,&quot;detailsUrl&quot;:&quot;https://mystore.domain/product/PRODCODE1&quot;,&quot;userDefined&quot;:{&quot;weight&quot;:5021.23,&quot;vat&quot;:0.06}}],
                                 user_defined: {&quot;delivery&quot;:&quot;express&quot;,&quot;carrier&quot;:&quot;ups&quot;})
```


