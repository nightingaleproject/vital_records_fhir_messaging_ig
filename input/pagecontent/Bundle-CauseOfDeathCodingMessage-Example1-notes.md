```
Instance: CauseOfDeathCodingMessage-Example1
InstanceOf: CauseOfDeathCodingMessage
Title: "CauseOfDeathCodingMessage-Example1"
Description: "Cause of death coding message - Example1 -- coded content only"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = CauseOfDeathCodingHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/CauseOfDeathCodingHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = Inline-Instance-for-CauseOfDeathCodingMessage-Example1-3
* entry[=].fullUrl = "http://www.example.org/fhir/Bundle/CauseOfDeathCodedContentBundle-Example1"
```