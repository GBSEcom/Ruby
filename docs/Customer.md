# OpenapiClient::Customer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Unique ID for the customer, if registered. This field is required if the parent object is present. | 
**start_date** | **String** | The timestamp of the customers registration in the merchants platform. Format is YYYY-MM-DD. | [optional] 
**first_name** | **String** | Customer&#39;s first name. | [optional] 
**last_name** | **String** | Customer&#39;s last name. | [optional] 
**middle_name** | **String** | Customer&#39;s middle name. | [optional] 
**email** | **String** | Customer&#39;s email address. | [optional] 
**session_id** | **String** | The unique ID of the current login session. Must be unique for the customer. | [optional] 
**username** | **String** | The username of this customer in the merchants system. This field should contain customer-supplied data if available instead of a generated ID. This field can contain the clients email address if it is also used for authentication purposes. | [optional] 
**gender** | **String** | The customers gender. Do not set this property if the customer does not specify a gender. | [optional] 
**date_of_birth** | **String** | The customer&#39;s year of birth. Format is YYYY. | [optional] 
**address** | [**CustomerAddress**](CustomerAddress.md) |  | [optional] 
**user_defined** | [**Object**](.md) | A JSON object that can carry any additional information about the customer that might be helpful for fraud detection. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::Customer.new(id: 125Xasdf57D,
                                 start_date: 2017-01-04,
                                 first_name: John,
                                 last_name: Smith,
                                 middle_name: Joseph,
                                 email: accept@xyz.com,
                                 session_id: session-1,
                                 username: username,
                                 gender: male,
                                 date_of_birth: 1982,
                                 address: null,
                                 user_defined: {&quot;previouslyAffected&quot;:&quot;Y&quot;})
```


