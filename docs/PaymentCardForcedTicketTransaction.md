# OpenapiClient::PaymentCardForcedTicketTransaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payment_method** | [**PaymentCardPaymentMethod**](PaymentCardPaymentMethod.md) |  | 
**reference_number** | **String** | Stores the six-digit reference number you have received as the result of a successful external authorization (e.g. by phone). The gateway needs this number for uniquely mapping a ForcedTicket transaction to a previously performed external authorization. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PaymentCardForcedTicketTransaction.new(payment_method: null,
                                 reference_number: 123455)
```


