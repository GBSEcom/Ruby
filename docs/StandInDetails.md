# OpenapiClient::StandInDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**stand_in_type** | **String** | Indicates standin instruction type. | 
**number_of_debits** | **String** | Indicates number of standin instruction debits.Possible values can be two digit number or UN (Until it is cancelled) or ND (Not defined). | 
**si_validated** | **Boolean** | Indicates standin instruction validation flag, it can be true or false. \&quot;false\&quot; - Not validated, \&quot;true\&quot; - Validated. | 
**maximum_transaction_amount** | **Float** | Maximum debit amount per standin instruction transaction. | 
**si_hub_id** | **String** | Unique identifier for standin instruction. | 
**frequency** | **String** | Indicates frequency of the standin instruction debit. | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::StandInDetails.new(stand_in_type: FIXED_AMOUNT,
                                 number_of_debits: 12,
                                 si_validated: true,
                                 maximum_transaction_amount: 1800,
                                 si_hub_id: Y3PCO6QGHT,
                                 frequency: MONTHLY)
```


