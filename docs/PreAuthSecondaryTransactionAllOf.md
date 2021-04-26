# OpenapiClient::PreAuthSecondaryTransactionAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_amount** | [**Amount**](Amount.md) |  | 
**decremental_flag** | **Boolean** | This flag can only be used in a preAuth transaction that updates the amount of a previous preAuth transaction to either increase the preAuth amount (DecrementalPreAuthFlag &#x3D; false) or decrease the preAuth amount (DecrementalPreAuthFlag &#x3D; true). | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::PreAuthSecondaryTransactionAllOf.new(transaction_amount: null,
                                 decremental_flag: false)
```


