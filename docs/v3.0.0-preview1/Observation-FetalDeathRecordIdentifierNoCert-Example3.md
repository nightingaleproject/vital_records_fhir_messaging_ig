# FetalDeathRecordIdentifierNoCert-Example3 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalDeathRecordIdentifierNoCert-Example3**

## Example Observation: FetalDeathRecordIdentifierNoCert-Example3

Profile: [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md)

**status**: Final

**code**: Fetal Death Record Identifier

> **component****code**:availability**value**:No

> **component****code**:index**value**: 2



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FetalDeathRecordIdentifierNoCert-Example3",
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
    },
    {
      "code" : {
        "coding" : [
          {
            "code" : "index"
          }
        ]
      },
      "valueInteger" : 2
    }
  ]
}

```
