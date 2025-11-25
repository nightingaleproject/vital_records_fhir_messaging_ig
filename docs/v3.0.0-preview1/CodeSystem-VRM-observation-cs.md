# Local Observation Identifiers - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Local Observation Identifiers**

## CodeSystem: Local Observation Identifiers 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:ObservationCS |

 
Codesystem for local observation identifiers. 

 This Code system is referenced in the content logical definition of the following value sets: 

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VRM-observation-cs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs",
  "version" : "3.0.0-Preview1",
  "name" : "ObservationCS",
  "title" : "Local Observation Identifiers",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-25T14:04:25-05:00",
  "publisher" : "CDC NCHS",
  "contact" : [
    {
      "name" : "CDC NCHS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://cdc.gov/nchs"
        }
      ]
    }
  ],
  "description" : "Codesystem for local observation identifiers.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [
    {
      "code" : "fetaldeathrecordidentifier",
      "display" : "Fetal Death Record Identifier",
      "definition" : "Fetal Death Record Identifier"
    },
    {
      "code" : "birthrecordidentifier",
      "display" : "Birth Record Record Identifier",
      "definition" : "Birth Record Identifier"
    }
  ]
}

```
