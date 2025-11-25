# Parameters-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Parameters-Example1**

## Example Parameters: Parameters-Example1

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "Parameters-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "cert_no",
      "valueUnsignedInt" : 123456
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
    },
    {
      "name" : "payload_version_id",
      "valueString" : "VRDRSTU2.2"
    }
  ]
}

```
