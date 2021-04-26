# OpenapiClient::SepaMandate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference** | **String** | Existing mandate reference, managed by merchant. Must match [A-Za-z0-9:?/+(),. -]{1,35} and not start with two slashes (\&quot;//\&quot;). Also known as the mandate ID. | 
**url** | **String** | Valid URL pointing to the SEPA mandate (PDF / HTML format recommended). When your store is enabled for SEPA Direct Debit as part of the Local Payments offering, this field allows you to transmit a valid URL of SEPA Direct Debit mandate to enable the Risk and Compliance department to access the details. Please note that it is mandatory to submit a mandateReference and a mandateDate together with a mandateUrl in case you manage SEPA Direct Debit mandates on your side in the combination with the Local Payments offering. | [optional] 
**signature_date** | **Date** | Date of mandate signature. | 
**type** | **String** | Sequence type of the direct debit. This defaults to &#39;SINGLE&#39; if not provided. | [default to &#39;SINGLE&#39;]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::SepaMandate.new(reference: 3RBQVEE,
                                 url: https://www.firstdata.com,
                                 signature_date: Fri Jul 14 19:00:00 CDT 2017,
                                 type: FINAL_COLLECTION)
```


