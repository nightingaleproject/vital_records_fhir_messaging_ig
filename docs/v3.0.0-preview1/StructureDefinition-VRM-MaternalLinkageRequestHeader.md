# Maternal Linkage Request Message Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Maternal Linkage Request Message Header**

## Resource Profile: Maternal Linkage Request Message Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MaternalLinkageRequestHeader |

 
Maternal Linkage Request Header 

**Usages:**

* Use this Profile: [Maternal Linkage Request Message](StructureDefinition-VRM-MaternalLinkageRequestMessage.md)
* Examples for this Profile: [MessageHeader/MaternalLinkageRequestHeaderExample1](MessageHeader-MaternalLinkageRequestHeaderExample1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-MaternalLinkageRequestHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-MaternalLinkageRequestHeader.csv), [Excel](StructureDefinition-VRM-MaternalLinkageRequestHeader.xlsx), [Schematron](StructureDefinition-VRM-MaternalLinkageRequestHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-MaternalLinkageRequestHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestHeader",
  "version" : "3.0.0-Preview1",
  "name" : "MaternalLinkageRequestHeader",
  "title" : "Maternal Linkage Request Message Header",
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
  "description" : "Maternal Linkage Request Header",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MessageHeader",
        "path" : "MessageHeader"
      },
      {
        "id" : "MessageHeader.id",
        "path" : "MessageHeader.id",
        "min" : 1
      },
      {
        "id" : "MessageHeader.event[x]",
        "path" : "MessageHeader.event[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MessageHeader.event[x]:eventUri",
        "path" : "MessageHeader.event[x]",
        "sliceName" : "eventUri",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ],
        "patternUri" : "http://nchs.cdc.gov/maternal_linkage_request"
      },
      {
        "id" : "MessageHeader.destination",
        "path" : "MessageHeader.destination",
        "min" : 1
      },
      {
        "id" : "MessageHeader.focus",
        "path" : "MessageHeader.focus",
        "min" : 1,
        "max" : "2"
      }
    ]
  }
}

```
