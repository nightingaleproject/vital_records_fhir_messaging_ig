# DummyDeathBundle - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DummyDeathBundle**

## Example Bundle: DummyDeathBundle

Profile: [Placeholder Profile for profile-based slicing](StructureDefinition-VRM-MessageBundle.md)

Bundle DummyDeathBundle of type collection

-------

Entry 1 - fullUrl = http://www.example.org/fhir/Parameters/ParametersDeathExample1

Resource Parameters:

> 

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "DummyDeathBundle",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
    ]
  },
  "type" : "collection",
  "entry" : [
    {
      "fullUrl" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "ParametersDeathExample1",
        "meta" : {
          "profile" : [
            "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
          ]
        },
        "parameter" : [
          {
            "name" : "cert_no",
            "valueUnsignedInt" : 111111
          },
          {
            "name" : "jurisdiction_id",
            "valueString" : "NY"
          },
          {
            "name" : "state_auxiliary_id",
            "valueString" : "abcdef10"
          }
        ]
      }
    }
  ]
}

```
