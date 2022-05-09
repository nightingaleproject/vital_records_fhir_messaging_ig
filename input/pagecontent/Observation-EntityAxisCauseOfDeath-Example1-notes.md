```
Instance: Observation-EntityAxisCauseOfDeath-Example1
InstanceOf: OperationOutcome
Usage: #inline
* issue[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-line"
* issue[=].extension[=].valueInteger = 22
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-col"
* issue[=].extension[=].valueInteger = 12
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-source"
* issue[=].extension[=].valueCode = #InstanceValidator
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-message-id"
* issue[=].extension[=].valueCode = #TERMINOLOGY_TX_SYSTEM_NO_CODE
* issue[=].severity = #warning
* issue[=].code = #code-invalid
* issue[=].details.text = "A code with no system has no defined meaning. A system should be provided"
* issue[=].expression = "Observation/EntityAxisCauseOfDeath-Example1: Observation.component[0].code.coding[0]"
* issue[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-line"
* issue[=].extension[=].valueInteger = 33
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-col"
* issue[=].extension[=].valueInteger = 12
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-source"
* issue[=].extension[=].valueCode = #InstanceValidator
* issue[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-message-id"
* issue[=].extension[=].valueCode = #TERMINOLOGY_TX_SYSTEM_NO_CODE
* issue[=].severity = #warning
* issue[=].code = #code-invalid
* issue[=].details.text = "A code with no system has no defined meaning. A system should be provided"
* issue[=].expression = "Observation/EntityAxisCauseOfDeath-Example1: Observation.component[1].code.coding[0]"
```