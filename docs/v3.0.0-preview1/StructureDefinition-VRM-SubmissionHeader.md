# Submission Message Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Submission Message Header**

## Resource Profile: Submission Message Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:SubmissionHeader |

 
Message Submission Header 

**Usages:**

* Use this Profile: [Birth Report Message](StructureDefinition-VRM-BirthReportMessage.md), [Death Record Submission Message](StructureDefinition-VRM-DeathRecordSubmissionMessage.md), [Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportMessage.md) and [Maternal Linkage Submission Message](StructureDefinition-VRM-MaternalLinkageSubmissionMessage.md)
* Examples for this Profile: [MessageHeader/BirthReportHeader-Example1](MessageHeader-BirthReportHeader-Example1.md), [MessageHeader/DeathRecordSubmissionHeaderExample1](MessageHeader-DeathRecordSubmissionHeaderExample1.md), [MessageHeader/FetalDeathReportHeader-Example1](MessageHeader-FetalDeathReportHeader-Example1.md), [MessageHeader/MaternalLinkageSubmissionHeaderExample1](MessageHeader-MaternalLinkageSubmissionHeaderExample1.md) and [MessageHeader/SubmissionHeader-Example1](MessageHeader-SubmissionHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-SubmissionHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-SubmissionHeader.csv), [Excel](StructureDefinition-VRM-SubmissionHeader.xlsx), [Schematron](StructureDefinition-VRM-SubmissionHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-SubmissionHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader",
  "version" : "3.0.0-Preview1",
  "name" : "SubmissionHeader",
  "title" : "Submission Message Header",
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
  "description" : "Message Submission Header",
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
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-SubmissionHeaderURI-vs"
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
