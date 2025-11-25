# Outcome-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome-Example1**

## Example OperationOutcome: Outcome-Example1

Profile: [Outcome Profile](StructureDefinition-VRM-Outcome.md)

### Issues

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Severity** | **Code** | **Diagnostics** |
| * | Error | Structural Issue | Expected 1 or more Cause of Death Condition resources, received 0. |



## Resource Content

```json
{
  "resourceType" : "OperationOutcome",
  "id" : "Outcome-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
    ]
  },
  "issue" : [
    {
      "severity" : "error",
      "code" : "structure",
      "diagnostics" : "Expected 1 or more Cause of Death Condition resources, received 0."
    }
  ]
}

```
