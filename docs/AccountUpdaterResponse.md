# OpenapiClient::AccountUpdaterResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**updated_card** | **String** | Account updater replacement PAN or TransArmor token. | [optional] 
**updated_token** | **String** | Updated value of token. | [optional] 
**updated_expiration_date** | **String** | New account number expiration date in MMYY format. | [optional] 
**updated_account_status** | **String** | Status of the updated account. An account may have closed (C), the expiry date may have changed (E), the account may have changed (A), or the cardholder should be contacted (Q). | [optional] 
**updated_account_error_code** | **String** | Code for the error encountered when updating account. | [optional] 


