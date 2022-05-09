```
Instance: DeathRecordVoidMessage-Example1
InstanceOf: DeathRecordVoidMessage
Title: "DeathRecordVoidMessage-Example1"
Description: "Void message - example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = VoidHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/VoidHeader-Example1"
* entry[+].resource = VoidParameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/VoidParameters-Example1"
```