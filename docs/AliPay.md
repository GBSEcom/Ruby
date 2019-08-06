# OpenapiClient::AliPay

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_data_type** | **String** | Use this to indicate the type of machine-readable payment data for scanning. | 
**payment_data** | **String** | Use this to send payment-related information, such as customer identity ID. | 
**order_title** | **String** | Use this to send an order title that shows up in the statement. | 
**order_details** | **String** | Use this to send order details that show up in the statement. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AliPay.new(payment_data_type: QRCODE,
                                 payment_data: 283047752805604753,
                                 order_title: My Purchase,
                                 order_details: These are the details about my purchase.)
```


