# OpenapiClient::EmailNotificationData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable_notification** | **Boolean** | Use this to enable/disable email notifications. | [optional] 
**merchant_name** | **String** | The merchant name to be displayed in the email to customer. | [optional] 
**receiver_email** | **String** | The email address(es) for receiving transaction notifications. | [optional] 
**sender_email** | **String** | The email address for sending transaction notifications to customer. | [optional] 
**locale** | **String** | The locale for received notifications. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::EmailNotificationData.new(enable_notification: true,
                                 merchant_name: TELECASH 01,
                                 receiver_email: info@firstdata.com,
                                 sender_email: do-not-reply@ipg-online.com,
                                 locale: en_GB)
```


