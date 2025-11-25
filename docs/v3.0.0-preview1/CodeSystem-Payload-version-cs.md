# Payload Version Identifier Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Payload Version Identifier Values**

## CodeSystem: Payload Version Identifier Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/Payload-version-cs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:PayloadVersionCS |

 
Codesystem for Payload Version Identifier Values. Only versions that are in production use are listed. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PayloadVersionVS](ValueSet-Payload-version-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "Payload-version-cs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/Payload-version-cs",
  "version" : "3.0.0-Preview1",
  "name" : "PayloadVersionCS",
  "title" : "Payload Version Identifier Values",
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
  "description" : "Codesystem for Payload Version Identifier Values. Only versions that are in production use are listed.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "VRDR_STU3_0",
      "display" : "VRDRSTU3.0",
      "definition" : "VRDR STU3.0"
    },
    {
      "code" : "VRDR_STU2_2",
      "display" : "VRDRSTU2.2",
      "definition" : "VRDR STU2.2"
    },
    {
      "code" : "BFDR_STU2_0",
      "display" : "BFDRSTU2.0",
      "definition" : "BFDR STU2.0"
    }
  ]
}

```
