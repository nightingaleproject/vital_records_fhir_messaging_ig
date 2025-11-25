# BirthRecordIdentifierChild-ExtensiveExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthRecordIdentifierChild-ExtensiveExample1**

## Example Observation: BirthRecordIdentifierChild-ExtensiveExample1

Profile: [Birth Record Identifier Child](StructureDefinition-VRM-birth-record-identifier-child.md)

**status**: Final

**code**: Birth Record Record Identifier

**value**: 717171

> **component****code**:Birthplace**value**: YC

> **component****code**:Birth year**value**: 2024

> **component****code**:index**value**: 1

> **component****code**:availability**value**:Yes



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "BirthRecordIdentifierChild-ExtensiveExample1",
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
  "valueString" : "717171",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "21842-0"
          }
        ]
      },
      "valueString" : "YC"
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "80904-6"
          }
        ]
      },
      "valueDateTime" : "2024"
    },
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
            "code" : "Y",
            "display" : "Yes"
          }
        ]
      }
    }
  ]
}

```
