# OpenapiClient::PaymentUrlRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**store_id** | **String** | An optional Outlet ID for clients that support multiple stores in the same developer app. | [optional] 
**client_locale** | [**ClientLocale**](ClientLocale.md) |  | [optional] 
**amount** | [**Amount**](Amount.md) |  | 
**transaction_type** | [**TransactionType**](TransactionType.md) |  | 
**order_id** | **String** | Client Order ID if supplied by client, otherwise the Order ID. | [optional] 
**billing** | [**Billing**](Billing.md) |  | [optional] 
**shipping** | [**Shipping**](Shipping.md) |  | [optional] 
**transaction_notification_url** | **String** | URL for notifying merchant with payment result. | [optional] 
**expiration** | **Integer** | Time until payment URL expires. | [optional] 
**authenticate_transaction** | **BOOLEAN** | If 3D secure should be applied. | [optional] 
**dynamic_merchant_name** | **String** | Dynamic merchant name for the cardholder&#39;s statement. | [optional] 
**invoice_number** | **String** | Invoice number. | [optional] 
**purchase_order_number** | **String** | Purchase order number. | [optional] 
**ip** | **String** | IPv4 or IPv6 network address. | [optional] 


