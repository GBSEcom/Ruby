# OpenapiClient::CardInfoLookupResponseAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**card_details** | [**Array&lt;CardInfo&gt;**](CardInfo.md) | One or more card information retrieved based on BIN. | [optional] 
**request_status** | **String** | Request status. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CardInfoLookupResponseAllOf.new(card_details: [{&quot;brand&quot;:&quot;VISA&quot;,&quot;brandProductId&quot;:&quot;VISA BUSINESS&quot;,&quot;cardFunction&quot;:&quot;credit&quot;,&quot;commercialCard&quot;:&quot;CORPORATE&quot;,&quot;issuerCountry&quot;:&quot;DE&quot;,&quot;issuerName&quot;:&quot;First National Bank of Omaha&quot;}],
                                 request_status: SUCCESS)
```


