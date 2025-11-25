# Message Update Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Message Update Header**

## Resource Profile: Message Update Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:UpdateHeader |

 
Message Update Header 

**Usages:**

* Use this Profile: [Birth Report Update Message](StructureDefinition-VRM-BirthReportUpdateMessage.md), [Death Record Update Message](StructureDefinition-VRM-DeathRecordUpdateMessage.md), [Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportUpdateMessage.md) and [Maternal Linkage Update Message](StructureDefinition-VRM-MaternalLinkageUpdateMessage.md)
* Examples for this Profile: [MessageHeader/BirthReportUpdateHeader-Example1](MessageHeader-BirthReportUpdateHeader-Example1.md), [MessageHeader/FetalDeathReportUpdateHeader-Example1](MessageHeader-FetalDeathReportUpdateHeader-Example1.md), [MessageHeader/MaternalLinkageUpdateHeaderExample1](MessageHeader-MaternalLinkageUpdateHeaderExample1.md) and [MessageHeader/UpdateHeader-Example1](MessageHeader-UpdateHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-UpdateHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-UpdateHeader.csv), [Excel](StructureDefinition-VRM-UpdateHeader.xlsx), [Schematron](StructureDefinition-VRM-UpdateHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-UpdateHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader",
  "version" : "3.0.0-Preview1",
  "name" : "UpdateHeader",
  "title" : "Message Update Header",
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
  "description" : "Message Update Header",
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
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-UpdateHeaderURI-vs"
        }
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
