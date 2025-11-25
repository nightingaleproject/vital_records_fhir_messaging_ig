# FetalDeathRecordIdentifier-ExtesnvieExample2 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalDeathRecordIdentifier-ExtesnvieExample2**

## Example Observation: FetalDeathRecordIdentifier-ExtesnvieExample2

Profile: [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md)

**status**: Final

**code**: Fetal Death Record Identifier

> **component****code**:index**value**: 2

> **component****code**:availability**value**:No



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FetalDeathRecordIdentifier-ExtesnvieExample2",
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
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "code" : "index"
          }
        ]
      },
      "valueInteger" : 2
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
