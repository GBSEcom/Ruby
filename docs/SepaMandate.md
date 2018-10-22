# SwaggerClient::SepaMandate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**reference** | **String** | Existing mandate reference, managed by merchant. Must match [A-Za-z0-9:?/+(),. -]{1,35} and not start with two slashes (“//”). Also known as the Mandate ID | 
**url** | **String** | Valid URL pointing to the SEPA mandate (PDF / HTML format recommended) | 
**signature_date** | **Date** | Date of mandate signature. | 
**type** | **String** | Sequence type of the direct debit. This defaults to &#39;SINGLE&#39; if not provided. | [default to &quot;SINGLE&quot;]


