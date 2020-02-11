# OpenapiClient::StoreUrlConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | An optional outlet id for clients that support multiple stores in the same developer app. | 
**transaction_notification_url** | **String** | Transaction notification URL for Connect. | [optional] 
**recurring_transaction_notification_url** | **String** | Recurring transaction notification URL for recurring payments. | [optional] 
**response_success_url** | **String** | Response success URL for Connect. | [optional] 
**response_failure_url** | **String** | Response failure URL for Connect. | [optional] 
**skip_result_page_for_success** | **Boolean** | Skip connect result page when transaction is approved. | [optional] 
**skip_result_page_for_failure** | **Boolean** | Skip connect result page when transaction is not approved. | [optional] 
**overwrite_url_allowed** | **Boolean** | Overwrite URLs in database by those from request. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StoreUrlConfiguration.new(id: 12345500000,
                                 transaction_notification_url: https://ipg-dev-1.1dc.com/webshop/transactionNotification,
                                 recurring_transaction_notification_url: https://ipg-dev-1.1dc.com/webshop/recurringTransactionNotification,
                                 response_success_url: https://www.firstdata.com/success,
                                 response_failure_url: https://www.firstdata.com/failure,
                                 skip_result_page_for_success: true,
                                 skip_result_page_for_failure: false,
                                 overwrite_url_allowed: true)
```


