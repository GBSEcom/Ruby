# OpenapiClient::AccountUpdaterResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**updated_card** | **String** | Account updater replacement PAN or TransArmor token. | [optional] 
**updated_token** | **String** | Updated value of token. | [optional] 
**updated_expiration_date** | **String** | New account number expiration date in MMYY format. | [optional] 
**updated_account_status** | **String** | Status of the updated account. An account may have closed (C), the expiry date may have changed (E), the account may have changed (A), or the cardholder should be contacted (Q). | [optional] 
**updated_account_error_code** | **String** | Code for the error encountered when updating account. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AccountUpdaterResponse.new(updated_card: 4012000066660018,
                                 updated_token: 1235325235236,
                                 updated_expiration_date: 1220,
                                 updated_account_status: A,
                                 updated_account_error_code: VAU002)
```


