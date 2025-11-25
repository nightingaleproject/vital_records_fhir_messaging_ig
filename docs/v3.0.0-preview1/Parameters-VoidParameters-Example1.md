# VoidParameters-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VoidParameters-Example1**

## Example Parameters: VoidParameters-Example1

Profile: [Void Message Parameters](StructureDefinition-VRM-VoidParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "VoidParameters-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-VoidParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "cert_no",
      "valueUnsignedInt" : 123456
    },
    {
      "name" : "block_count",
      "valueUnsignedInt" : 10
    },
    {
      "name" : "jurisdiction_id",
      "valueString" : "NY"
    },
    {
      "name" : "event_year",
      "valueUnsignedInt" : 2018
    },
    {
      "name" : "state_auxiliary_id",
      "valueString" : "abcdef10"
    }
  ]
}

```
