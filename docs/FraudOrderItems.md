# OpenapiClient::FraudOrderItems

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | A unique ID associated with the product. Must be unique within the merchant&#39;s system. | [optional] 
**name** | **String** | A name or short description of the product. | [optional] 
**quantity** | **String** | The unit in which the product is sold (e.g. litre, kilogram, etc). Leave empty if the product is sold as a complete unit. | [optional] 
**unit** | **String** | The number of units sold. Set to 1 if there is only one unit of the item. Leave empty if the quantity is unknown at the time of the request. | [optional] 
**unit_price** | **String** | The price per unit. | [optional] 
**categories** | **Array&lt;Array&lt;String&gt;&gt;** | The categories that this product belongs to. | [optional] 
**details_url** | **String** | The URL to the merchant&#39;s management system, for reporting and analysis. | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the order that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::FraudOrderItems.new(id: PRODCODE1,
                                 name: The Art of Computer Programming,
                                 quantity: litre,
                                 unit: 1,
                                 unit_price: {&quot;value&quot;: 7300, &quot;currency&quot;: &quot;USD&quot;},
                                 categories: [[&quot;Books, Computers &amp; Technology, Programming&quot;],[&quot;Books, Text Books, Computer Science&quot;]],
                                 details_url: https://mystore.domain/product/PRODCODE1,
                                 user_defined: {&quot;weight&quot;:5021.23,&quot;vat&quot;:0.06})
```


