# StatusParameters-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StatusParameters-Example1**

## Example Parameters: StatusParameters-Example1

Profile: [Status Message Parameters](StructureDefinition-VRM-StatusParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "StatusParameters-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-StatusParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "cert_no",
      "valueUnsignedInt" : 123456
    },
    {
      "name" : "status",
      "valueString" : "manualCauseOfDeathCoding"
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
