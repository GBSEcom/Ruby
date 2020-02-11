# OpenapiClient::LockoutTime

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**auto_lockout_time** | **Integer** | Auto-lockout time. | [optional] 
**duplicate_lockout_time** | **Integer** | Duplicate lockout time. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::LockoutTime.new(auto_lockout_time: 3,
                                 duplicate_lockout_time: 4)
```


