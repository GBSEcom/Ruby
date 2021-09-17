# OpenapiClient::RedirectAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**challenge_indicator** | **String** | Indicates whether or not a challenge should be performed. 01 &#x3D; No preference (You have no preference whether a challenge should be performed. This is the default value) 02 &#x3D; No challenge requested (You prefer that no challenge should be performed) 03 &#x3D; Challenge requested: 3DS Requestor Preference (You prefer that a challenge should be performed) 04 &#x3D; Challenge requested: Mandate (There are local or regional mandates that mean that a challenge must be performed)  | [optional] [default to &#39;01&#39;]
**authenticate_transaction** | **Boolean** | If 3D secure should be applied. | [optional] 
**three_ds_emv_co_message_category** | **String** | EmvCo Messag Category | [optional] 
**browser_java_script_enabled** | **Boolean** | Browser Java Script Enabled flag | [optional] [default to false]
**override3ds_country_exclusion** | **Boolean** | Override 3ds Country Exclusion flag | [optional] [default to false]
**three_ds_transaction_type** | **String** | Secure 3D Transaction Type | [optional] 
**skip_tra** | **Boolean** | skip TRA exemption for the transaction | [optional] [default to false]
**full_bypass** | **Boolean** | Full by pass flag | [optional] [default to false]
**mobile_mode** | **Boolean** | Mobile mode flag | [optional] [default to false]
**payment_mode** | **String** | Payment Mode | [optional] 
**language** | **String** | Language used by client. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::RedirectAttributes.new(challenge_indicator: 01,
                                 authenticate_transaction: true,
                                 three_ds_emv_co_message_category: 01,
                                 browser_java_script_enabled: null,
                                 override3ds_country_exclusion: null,
                                 three_ds_transaction_type: 01,
                                 skip_tra: null,
                                 full_bypass: null,
                                 mobile_mode: null,
                                 payment_mode: FULLPAY,
                                 language: en)
```


