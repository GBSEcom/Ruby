# OpenapiClient::PaymentSchedulesRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_type** | **String** | Object name of the payment schedules request. | 
**store_id** | **String** | Store ID number. | [optional] 
**start_date** | **Date** | Date of mandate signature. | 
**number_of_payments** | **Integer** | Number of times the recurring payment will process. | [optional] 
**maximum_failures** | **Integer** | Number of failures that can be encountered before re-tries cease. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**transaction_origin** | [**TransactionOrigin**](TransactionOrigin.md) |  | [optional] 
**dynamic_merchant_name** | **String** | Dynamic merchant name for the cardholder&#39;s statement. | [optional] 
**frequency** | [**Frequency**](Frequency.md) |  | 
**transaction_amount** | [**Amount**](Amount.md) |  | 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 
**order_id** | **String** | Note - Client Order ID if supplied by client. If not supplied by client, IPG will generate. The first 12 alphanumeric digits are passed down to Fiserv Enterprise reporting tool, Clientline and Data File Manager (DFM). | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**comments** | **String** | User supplied comments. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentSchedulesRequest.new(request_type: PaymentMethodPaymentSchedulesRequest,
                                 store_id: 1109959991,
                                 start_date: Wed Oct 24 19:00:00 CDT 2018,
                                 number_of_payments: 10,
                                 maximum_failures: 1,
                                 invoice_number: 96126098,
                                 purchase_order_number: 123055342,
                                 transaction_origin: null,
                                 dynamic_merchant_name: MyWebsite,
                                 frequency: null,
                                 transaction_amount: null,
                                 client_locale: null,
                                 order_id: 123456,
                                 billing: null,
                                 shipping: null,
                                 comments: This scheduled payment series is to pay for the thing.)
```


