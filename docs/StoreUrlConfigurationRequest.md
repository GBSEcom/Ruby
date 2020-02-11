# OpenapiClient::StoreUrlConfigurationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stores** | [**Array&lt;StoreUrlConfiguration&gt;**](StoreUrlConfiguration.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreUrlConfigurationRequest.new(stores: [{&quot;id&quot;:&quot;12099500088&quot;,&quot;responseFailureUrl&quot;:&quot;https://www.firstdata.com/failure&quot;,&quot;skipResultPageForSuccess&quot;:&quot;true&quot;,&quot;skipResultPageForFailure&quot;:&quot;true&quot;,&quot;overwriteUrlAllowed&quot;:&quot;false&quot;},{&quot;id&quot;:&quot;12099500044&quot;,&quot;transactionNotificationUrl&quot;:&quot;https://ipg-dev-1.1dc.com/webshop/transactionNotification&quot;,&quot;recurringTransactionNotificationUrl&quot;:&quot;https://ipg-dev-1.1dc.com/webshop/transactionNotification&quot;,&quot;responseSuccessUrl&quot;:&quot;https://www.firstdata.com/success&quot;}])
```


