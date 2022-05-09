```
Instance: ExtractionErrorMessage-Example1
InstanceOf: ExtractionErrorMessage
Title: "ExtractionErrorMessage-Example1"
Description: "Extraction error message - Example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = ExtractionErrorHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/ExtractionErrorHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = Outcome-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/OperationOutcome/Outcome-Example1"
```