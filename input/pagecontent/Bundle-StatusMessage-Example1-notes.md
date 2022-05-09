```
Instance: StatusMessage-Example1
InstanceOf: StatusMessage
Title: "StatusMessage-Example1"
Description: "Status message - Example1"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = StatusHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/StatusHeader-Example1"
* entry[+].resource = StatusParameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/StatusParameters-Example1"
```