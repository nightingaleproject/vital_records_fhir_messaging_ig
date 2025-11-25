# DummyBundle - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DummyBundle**

## Example Bundle: DummyBundle

Profile: [Placeholder Profile for profile-based slicing](StructureDefinition-VRM-MessageBundle.md)

Bundle DummyBundle of type collection

-------

Entry 1 - fullUrl = http://www.example.org/fhir/Parameters/ParametersBirth-Example1

Resource Parameters:

> 

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "DummyBundle",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
    ]
  },
  "type" : "collection",
  "entry" : [
    {
      "fullUrl" : "http://www.example.org/fhir/Parameters/ParametersBirth-Example1",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "ParametersBirth-Example1",
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
            "name" : "event_year",
            "valueUnsignedInt" : 2022
          },
          {
            "name" : "state_auxiliary_id",
            "valueString" : "abcdef10"
          },
          {
            "name" : "payload_version_id",
            "valueString" : "BFDRSTU2.0"
          }
        ]
      }
    }
  ]
}

```
