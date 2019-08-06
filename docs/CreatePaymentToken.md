# OpenapiClient::CreatePaymentToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**value** | **String** | Client-supplied payment token value. Only applicable for DataVault tokenization scheme. | [optional] 
**reusable** | **Boolean** | If the token is reusable. | [optional] [default to true]
**decline_duplicates** | **Boolean** | Decline duplicate payment info if client token is supplied. | [optional] [default to false]

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::CreatePaymentToken.new(value: 234ljl124l12,
                                 reusable: true,
                                 decline_duplicates: false)
```


