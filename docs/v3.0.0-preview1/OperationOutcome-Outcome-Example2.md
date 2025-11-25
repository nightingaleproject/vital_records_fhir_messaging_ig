# Outcome-Example2 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome-Example2**

## Example OperationOutcome: Outcome-Example2

Profile: [Outcome Profile](StructureDefinition-VRM-Outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Diagnostics** |
| * | Warning | Structural Issue | Description of How Injury Occurred (HOWINJ) in InjuryIncident(Observation).value.text exceeded IJE Field size (250) and was truncated. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Outcome-Example2",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
    ]
  },
  "issue" : [
    {
      "severity" : "warning",
      "code" : "structure",
      "diagnostics" : "Description of How Injury Occurred (HOWINJ) in InjuryIncident(Observation).value.text exceeded IJE Field size (250) and was truncated."
    }
  ]
}

```
