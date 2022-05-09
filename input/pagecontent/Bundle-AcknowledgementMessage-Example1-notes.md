```
Instance: AcknowledgementMessage-Example1
InstanceOf: AcknowledgementMessage
Title: "AcknowledgementMessage-Example1"
Description: "Acknowledgement message - Example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = AcknowledgementHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/AcknowledgementHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"
```