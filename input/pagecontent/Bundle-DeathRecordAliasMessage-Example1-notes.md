```
Instance: DeathRecordAliasMessage-Example1
InstanceOf: DeathRecordAliasMessage
Title: "DeathRecordAliasMessage-Example1"
Description: "Alias Message - Example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AliasHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/AliasHeader-Example1"
* entry[+].resource = AliasParameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/AliasParameters-Example1"
```