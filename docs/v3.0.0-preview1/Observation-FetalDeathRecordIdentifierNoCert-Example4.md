# FetalDeathRecordIdentifierNoCert-Example4 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalDeathRecordIdentifierNoCert-Example4**

## Example Observation: FetalDeathRecordIdentifierNoCert-Example4

Profile: [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md)

**status**: Final

**code**: Fetal Death Record Identifier

> **component****code**:availability**value**:Temporarily unavailable

> **component****code**:index**value**: 1



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "FetalDeathRecordIdentifierNoCert-Example4",
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
            "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
            "code" : "NAV",
            "display" : "Temporarily unavailable"
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
      "valueInteger" : 1
    }
  ]
}

```
