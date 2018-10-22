# SwaggerClient::PrimaryTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_type** | [**TransactionType**](TransactionType.md) |  | 
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same app. | [optional] 
**client_transaction_id** | **String** | The unique client Transaction ID from the Request header, if supplied. | [optional] 
**amount** | [**Amount**](Amount.md) |  | 
**payment_method** | [**PaymentMethod**](PaymentMethod.md) |  | 
**order** | [**Order**](Order.md) |  | [optional] 
**basket_items** | [**Array&lt;BasketItem&gt;**](BasketItem.md) | Required for some payment methods (for example, Klarna) | [optional] 
**split_shipment** | [**SplitShipment**](SplitShipment.md) |  | [optional] 
**additional_details** | [**PrimaryTransactionAdditionalDetails**](PrimaryTransactionAdditionalDetails.md) |  | [optional] 
**industry_specific_extensions** | [**IndustrySpecificExtensions**](IndustrySpecificExtensions.md) |  | [optional] 
**stored_credentials** | [**StoredCredential**](StoredCredential.md) |  | [optional] 


