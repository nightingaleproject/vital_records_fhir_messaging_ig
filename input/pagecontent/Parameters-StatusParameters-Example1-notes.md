```
Instance: StatusParameters-Example1
InstanceOf: StatusParameters
Title: "StatusParameters-Example1"
Description: "Parameters for Status: Example"
Usage: #example
* parameter[0].name = "status"
* parameter[=].valueCoding = http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-Status-cs#manualCauseOfDeathCoding
* parameter[+].name = "jurisdiction_id"
* parameter[=].valueString = "NH"
* parameter[+].name = "cert_no"
* parameter[=].valueUnsignedInt = 123456
* parameter[+].name = "death_year"
* parameter[=].valueUnsignedInt = 2018
* parameter[+].name = "state_auxiliary_id"
* parameter[=].valueString = "abcdef10"
```