# Maternal Linkage Request Message - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maternal Linkage Request Message**

## Resource Profile: Maternal Linkage Request Message 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestMessage | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MaternalLinkageRequestMessage |

 
Message for requesting maternal linkage 

**Usages:**

* Examples for this Profile: [Bundle/MaternalLinkageRequestMessage-Example1](Bundle-MaternalLinkageRequestMessage-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-MaternalLinkageRequestMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-MaternalLinkageRequestMessage.csv), [Excel](StructureDefinition-VRM-MaternalLinkageRequestMessage.xlsx), [Schematron](StructureDefinition-VRM-MaternalLinkageRequestMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-MaternalLinkageRequestMessage",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestMessage",
  "version" : "3.0.0-Preview1",
  "name" : "MaternalLinkageRequestMessage",
  "title" : "Maternal Linkage Request Message",
  "status" : "draft",
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
  "description" : "Message for requesting maternal linkage",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.id",
        "path" : "Bundle.id",
        "min" : 1
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "message"
      },
      {
        "id" : "Bundle.timestamp",
        "path" : "Bundle.timestamp",
        "min" : 1
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            },
            {
              "type" : "profile",
              "path" : "resource"
            }
          ],
          "description" : "Slicing based on the type (relatively easy) and then profile of the sliced element",
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Bundle.entry:messageHeader",
        "path" : "Bundle.entry",
        "sliceName" : "messageHeader",
        "short" : "Header",
        "definition" : "Header",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:messageHeader.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "MessageHeader",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestHeader"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:deathRecordParameters",
        "path" : "Bundle.entry",
        "sliceName" : "deathRecordParameters",
        "short" : "Death Message Submission Parameters",
        "definition" : "Death Record Submission Parameters",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:deathRecordParameters.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Parameters",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
            ]
          }
        ]
      }
    ]
  }
}

```
