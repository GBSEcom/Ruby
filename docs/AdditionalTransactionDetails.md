# OpenapiClient::AdditionalTransactionDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comments** | **String** | Comment for the payment. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**disbursement_trans_type** | **String** | The type of debit disbursement transaction. | [optional] 
**wallet_provider** | **String** | The wallet provider type. | [optional] 
**receipts** | [**Array&lt;Receipt&gt;**](Receipt.md) | Provides receipt response data, if it has been requested. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AdditionalTransactionDetails.new(comments: This is a comment,
                                 invoice_number: 551294633441,
                                 purchase_order_number: 1223456,
                                 disbursement_trans_type: FUNDING,
                                 wallet_provider: APPLE_PAY,
                                 receipts: [{&quot;type&quot;:&quot;cardholder&quot;,&quot;data&quot;:[{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;--------------------------------&quot;},{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;              SALE              &quot;}]},{&quot;type&quot;:&quot;merchant&quot;,&quot;data&quot;:[{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;        Example Merchant        &quot;},{&quot;endOfLine&quot;:true,&quot;text&quot;:&quot;--------------------------------&quot;}]}])
```


