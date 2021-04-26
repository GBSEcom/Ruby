# OpenapiClient::ProcessorData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference_number** | **String** | Reference transaction ID. | [optional] 
**authorization_code** | **String** | Code returned to confirm transaction. | [optional] 
**response_code** | **String** | Response code from endpoints. | [optional] 
**network** | **String** | Network used for transaction. | [optional] 
**association_response_code** | **String** | Raw response code from issuer. | [optional] 
**response_message** | **String** | Message returned from endpoints. | [optional] 
**avs_response** | [**AVSResponse**](AVSResponse.md) |  | [optional] 
**cardholder_info_response** | [**CardholderInfoResponse**](CardholderInfoResponse.md) |  | [optional] 
**security_code_response** | **String** | Code returned for CVV. | [optional] 
**merchant_advice_code_indicator** | **String** | Code to map merchant advice code to ISO specification. | [optional] 
**response_indicator** | **String** | Indicates whether the transaction was routed through the payment card&#39;s own network or through a different network. | [optional] 
**debit_receipt_number** | **String** | Receipt number from debit network provider. | [optional] 
**transaction_integrity_class** | **String** | MasterCard provided Transaction Integrity Class for Point of Sale (POS) Purchase and Purchase with Cash Back transactions initiated on the Authorization Platform. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::ProcessorData.new(reference_number: 811720726601,
                                 authorization_code: OK7118,
                                 response_code: 00,
                                 network: NYCE,
                                 association_response_code: 000,
                                 response_message: Amount specified exceeds allowable limit.,
                                 avs_response: null,
                                 cardholder_info_response: null,
                                 security_code_response: NOT_MATCHED,
                                 merchant_advice_code_indicator: 01,
                                 response_indicator: 0100,
                                 debit_receipt_number: 123456,
                                 transaction_integrity_class: A1)
```


