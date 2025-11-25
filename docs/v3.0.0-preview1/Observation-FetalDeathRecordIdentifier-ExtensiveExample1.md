# FetalDeathRecordIdentifier-ExtensiveExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalDeathRecordIdentifier-ExtensiveExample1**

## Example Observation: FetalDeathRecordIdentifier-ExtensiveExample1

Profile: [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md)

**status**: Final

**code**: Fetal Death Record Identifier

**value**: 100001

> **component****code**:Jurisdiction code**value**: YC

> **component****code**:Date of death [Date]**value**: 2024

> **component****code**:index**value**: 1

> **component****code**:availability**value**:Yes



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FetalDeathRecordIdentifier-ExtensiveExample1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs",
        "code" : "fetaldeathrecordidentifier"
      }
    ]
  },
  "valueString" : "100001",
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "77969-4"
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
            "code" : "81954-0"
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
