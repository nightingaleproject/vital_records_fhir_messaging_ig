# BirthRecordIdentifierChildNoCert-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthRecordIdentifierChildNoCert-Example1**

## Example Observation: BirthRecordIdentifierChildNoCert-Example1

Profile: [Birth Record Identifier Child](StructureDefinition-VRM-birth-record-identifier-child.md)

**status**: Final

**code**: Birth Record Record Identifier

> **component****code**:index**value**: 1

> **component****code**:availability**value**:No



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BirthRecordIdentifierChildNoCert-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs",
        "code" : "birthrecordidentifier"
      }
    ]
  },
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "code" : "index"
          }
        ]
      },
      "valueInteger" : 1
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "availability"
          }
        ]
      },
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
            "code" : "N",
            "display" : "No"
          }
        ]
      }
    }
  ]
}

```
