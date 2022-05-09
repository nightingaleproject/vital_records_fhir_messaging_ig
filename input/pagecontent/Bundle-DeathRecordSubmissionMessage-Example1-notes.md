```
Instance: DeathRecordSubmissionMessage-Example1
InstanceOf: DeathRecordSubmissionMessage
Title: "DeathRecordSubmissionMessage-Example1"
Description: "Submission mesage - Example"
Usage: #example
* type = #message
* timestamp = "2021-05-20T00:00:00Z"
* entry[0].resource = SubmissionHeader-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Header/SubmissionHeader-Example1"
* entry[+].resource = Parameters-Example1
* entry[=].fullUrl = "http://www.example.org/fhir/Parameters/Parameters-Example1"
* entry[+].resource = Inline-Instance-for-DeathRecordSubmissionMessage-Example1-3
* entry[=].fullUrl = "http://www.example.org/fhir/Bundle/DeathCertificateDocument-Example1"
```