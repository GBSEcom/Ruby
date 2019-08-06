# OpenapiClient::RecurringPaymentDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | Store ID number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**creation_date** | **String** | Date recurring payment was created. | [optional] 
**start_date** | **String** | Date of mandate signature. | [optional] 
**next_attempt_date** | **String** | Date of next transaction process attempt. | [optional] 
**transaction_amount** | [**Amount**](Amount.md) |  | [optional] 
**payment_method_details** | [**PaymentMethodDetails**](PaymentMethodDetails.md) |  | [optional] 
**frequency** | [**Frequency**](Frequency.md) |  | [optional] 
**number_of_payments** | **Integer** | Number of times the recurring payment will process. | [optional] 
**run_count** | **Integer** | Times the recurring payment has already run. | [optional] 
**state** | **String** | State of the recurring payment. | [optional] 
**comments** | **String** | User supplied comments. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RecurringPaymentDetails.new(store_id: 1109959991,
                                 purchase_order_number: 123055342,
                                 invoice_number: 96126098,
                                 creation_date: 2018-10-25,
                                 start_date: 2018-10-25,
                                 next_attempt_date: 2018-10-25,
                                 transaction_amount: null,
                                 payment_method_details: null,
                                 frequency: null,
                                 number_of_payments: 10,
                                 run_count: 10,
                                 state: Installed,
                                 comments: This scheduled payment series is to pay for the thing.)
```


