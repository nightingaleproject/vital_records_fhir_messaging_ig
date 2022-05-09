```
Instance: UpdateMessage-Example1
InstanceOf: DeathRecordUpdateMessage
Title: "UpdateMessage-Example1"
Description: "Update message - example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = UpdateHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/UpdateHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = Inline-Instance-for-UpdateMessage-Example1-3
* entry[=].fullUrl = "http://www.example.org/fhir/Bundle/DeathCertificateDocument-Example1"
```