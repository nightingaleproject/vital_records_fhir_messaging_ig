# AliasParameters-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AliasParameters-Example1**

## Example Parameters: AliasParameters-Example1

Profile: [Alias Message Parameters](StructureDefinition-VRM-AliasParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "AliasParameters-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasParameters"
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
      "name" : "alias_father_surname",
      "valueString" : "Jingleheimer"
    },
    {
      "name" : "alias_decedent_first_name",
      "valueString" : "John"
    },
    {
      "name" : "alias_decedent_middle_name",
      "valueString" : "Jacob"
    },
    {
      "name" : "alias_decedent_last_name",
      "valueString" : "Schmidt"
    },
    {
      "name" : "alias_decedent_name_suffix",
      "valueString" : "III"
    },
    {
      "name" : "alias_social_security_number",
      "valueString" : "123-45-6789"
    }
  ]
}

```
