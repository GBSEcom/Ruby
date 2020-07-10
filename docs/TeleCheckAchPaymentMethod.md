# OpenapiClient::TeleCheckAchPaymentMethod

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ach_type** | **String** | ACH application type values will be one of either TeleCheckICAPaymentMethod or TeleCheckCBPPaymentMethod. | 
**routing_number** | **String** | Bank routing number. | 
**account_number** | **String** | Bank account number. | 
**account_type** | **String** | Identifies if the account type is checking or savings. | 
**check_number** | **String** | Check number. | [optional] 
**check_type** | **String** | Identifies if the check type is personal or company. | 
**product_code** | **String** | Identifies the product code in the transaction. | [optional] 
**manual_id_info** | [**IdInfo**](IdInfo.md) |  | [optional] 
**supplement_id_info** | [**IdInfo**](IdInfo.md) |  | [optional] 
**agent_id** | **String** | Used to track the agent transaction activity. | [optional] 
**terminal_id** | **String** | Identifies the register or lane number where the original sale transaction occurred. | [optional] 
**registration_id** | **String** | Unique ID assigned by the merchant for the consumer (never recycled). It is an additional level of authentication. To use this feature, the merchant must work with TeleCheck Risk to discuss. Registration IDs must not be generated for an existing or returning consumer returns. The single registration ID must be unique per consumer. | [optional] 
**registration_date** | **Date** | Date the consumer originally registered in format MMDDYYYY. | [optional] 
**release_type** | **String** | Release type is used as a risk variable to gauge risk level when the merchant is releasing the purchased merchandise. | [optional] 
**vip_customer** | **String** | Flags a transaction as a VIP order (based on merchant criteria). This field should not be sent for non-VIP orders. | [optional] 
**session_id** | **String** | Session identifier. | 
**terminal_state** | **String** | Identifies the US state or territory where the original sale transaction occurred. | [optional] 
**terminal_city** | **String** | Identifies the city where the original sale transaction occurred. | [optional] 
**ach_bill_to** | [**TeleCheckAchPaymentMethodAchBillTo**](TeleCheckAchPaymentMethodAchBillTo.md) |  | 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::TeleCheckAchPaymentMethod.new(ach_type: TeleCheckICAPaymentMethod,
                                 routing_number: 1283673312,
                                 account_number: 2398649823984789,
                                 account_type: C,
                                 check_number: 9878867880,
                                 check_type: P,
                                 product_code: 128367,
                                 manual_id_info: null,
                                 supplement_id_info: null,
                                 agent_id: RVK001,
                                 terminal_id: 1283673312,
                                 registration_id: 12345,
                                 registration_date: Tue Oct 01 19:00:00 CDT 2019,
                                 release_type: P,
                                 vip_customer: Y,
                                 session_id: fb2e77d.47a0479900504cb3ab4a1f626d174d2d,
                                 terminal_state: GA,
                                 terminal_city: Atlanta,
                                 ach_bill_to: null)
```


