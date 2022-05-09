```
Instance: Patient-Decedent-Example2
InstanceOf: OperationOutcome
Usage: #inline
* issue.extension[0].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-line"
* issue.extension[=].valueInteger = 151
* issue.extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-col"
* issue.extension[=].valueInteger = 10
* issue.extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-issue-source"
* issue.extension[=].valueCode = #InstanceValidator
* issue.extension[+].url = "http://hl7.org/fhir/StructureDefinition/operationoutcome-message-id"
* issue.extension[=].valueCode = #Terminology_TX_Code_ValueSet_Ext
* issue.severity = #warning
* issue.code = #code-invalid
* issue.details.text = "No code provided, and a code should be provided from the value set 'Patient Contact Relationship ' (http://hl7.org/fhir/ValueSet/patient-contactrelationship)"
* issue.expression = "Patient/Decedent-Example2: Patient.contact[0].relationship[0]"
```