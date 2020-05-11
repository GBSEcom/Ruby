# OpenapiClient::ClearingDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clearing_elements** | [**Array&lt;ClearingElement&gt;**](ClearingElement.md) | The array contains information about the clearing elements. | [optional] 
**batch_time_stamp** | **String** | Timestamp when the clearing has been processed. The used format is \&quot;YYYYMMDDhhmmss\&quot;. | [optional] 
**receipt_number_from** | **Integer** | Start receipt number for the clearing process. | [optional] 
**receipt_number_to** | **Integer** | End receipt number for the clearing process. | [optional] 
**trace_number** | **Integer** | Trace number for the clearing process. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ClearingDetails.new(clearing_elements: [{&quot;clearingElement&quot;:{&quot;brand&quot;:&quot;VISA&quot;,&quot;value&quot;:&quot;1234&quot;,&quot;count&quot;:&quot;1234&quot;}},{&quot;clearingElement&quot;:{&quot;brand&quot;:&quot;AMEX&quot;,&quot;value&quot;:&quot;4321&quot;,&quot;count&quot;:&quot;999&quot;}}],
                                 batch_time_stamp: 20190501094321,
                                 receipt_number_from: 2520,
                                 receipt_number_to: 2567,
                                 trace_number: 113744)
```


