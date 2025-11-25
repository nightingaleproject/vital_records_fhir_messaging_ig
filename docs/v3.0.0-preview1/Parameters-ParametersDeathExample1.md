# ParametersDeathExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParametersDeathExample1**

## Example Parameters: ParametersDeathExample1

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters



## Resource Content

```json
{
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

```
