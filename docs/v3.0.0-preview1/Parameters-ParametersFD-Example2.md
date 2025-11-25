# ParametersFD-Example2 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParametersFD-Example2**

## Example Parameters: ParametersFD-Example2

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametersFD-Example2",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "cert_no",
      "valueUnsignedInt" : 112233
    },
    {
      "name" : "jurisdiction_id",
      "valueString" : "NY"
    },
    {
      "name" : "event_year",
      "valueUnsignedInt" : 2021
    },
    {
      "name" : "state_auxiliary_id",
      "valueString" : "abcdef10"
    },
    {
      "name" : "payload_version_id",
      "valueString" : "BFDRSTU1.1"
    }
  ]
}

```
