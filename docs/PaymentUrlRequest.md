# OpenapiClient::PaymentUrlRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | 
**order_id** | **String** | Client order ID if supplied by client, otherwise the order ID. | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**transaction_notification_url** | **String** | URL for notifying merchant of payment result. | [optional] 
**expiration** | **Integer** | Time until payment URL expires. | [optional] 
**authenticate_transaction** | **Boolean** | If 3D secure should be applied. | [optional] 
**dynamic_merchant_name** | **String** | Dynamic merchant name for the cardholder&#39;s statement. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**hosted_payment_page_text** | **String** | The text to be displayed to the payer on the hosted payment page. | [optional] 
**ip** | **String** | IPv4 or IPv6 network address. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentUrlRequest.new(store_id: 12345500000,
                                 client_locale: null,
                                 transaction_amount: null,
                                 transaction_type: null,
                                 order_id: 123456,
                                 billing: null,
                                 shipping: null,
                                 transaction_notification_url: https://showmethepaymentresult.com,
                                 expiration: 4102358400,
                                 authenticate_transaction: true,
                                 dynamic_merchant_name: MyWebsite,
                                 invoice_number: 96126098,
                                 purchase_order_number: 123055342,
                                 hosted_payment_page_text: This is a payment for x,
                                 ip: 264.31.73.24)
```


