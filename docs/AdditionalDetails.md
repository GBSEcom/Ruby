# OpenapiClient::AdditionalDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**comments** | **String** | Comments for the payment. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**operator_id** | **String** | The operator ID. | [optional] 
**sales_system_id** | **String** | The sales system ID. | [optional] 
**ipg_deferred_auth** | **Boolean** | Indicates if the particular transaction is a deferred authorization. | [optional] 
**high_risk_purchase_indicator** | **Boolean** | this is highRiskPurchaseIndicator. | [optional] 
**receipts** | [**Array&lt;ReceiptRequestInfo&gt;**](ReceiptRequestInfo.md) | Provides request information that is necessary to generate receipts. | [optional] 
**sca_exemption_type** | **String** | Strong customer authentication exemption type indicator. | [optional] 
**sca_visa_merchant_id** | **String** | Eight-character Visa merchant identifier (VMID) assigned by Visa, required for trusted merchant and delegated authentication. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AdditionalDetails.new(comments: This is a comment,
                                 invoice_number: 551294633441,
                                 purchase_order_number: 1223456,
                                 operator_id: null,
                                 sales_system_id: null,
                                 ipg_deferred_auth: true,
                                 high_risk_purchase_indicator: true,
                                 receipts: [{&quot;type&quot;:&quot;cardholder&quot;,&quot;locale&quot;:&quot;de-DE&quot;},{&quot;type&quot;:&quot;merchant&quot;,&quot;locale&quot;:&quot;en&quot;,&quot;linewidth&quot;:48}],
                                 sca_exemption_type: TRA Exemption,
                                 sca_visa_merchant_id: 12312311)
```


