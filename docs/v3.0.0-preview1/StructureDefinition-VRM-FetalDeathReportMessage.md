# Fetal Death Report Message - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fetal Death Report Message**

## Resource Profile: Fetal Death Report Message 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-FetalDeathReportMessage | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:FetalDeathReportMessage |

 
Message for reporting fetal death records 

**Usages:**

* Examples for this Profile: [Bundle/FetalDeathReportMessage-Example1](Bundle-FetalDeathReportMessage-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-FetalDeathReportMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-FetalDeathReportMessage.csv), [Excel](StructureDefinition-VRM-FetalDeathReportMessage.xlsx), [Schematron](StructureDefinition-VRM-FetalDeathReportMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-FetalDeathReportMessage",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-FetalDeathReportMessage",
  "version" : "3.0.0-Preview1",
  "name" : "FetalDeathReportMessage",
  "title" : "Fetal Death Report Message",
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
  "description" : "Message for reporting fetal death records",
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
        "min" : 3
      },
      {
        "id" : "Bundle.entry:messageHeader",
        "path" : "Bundle.entry",
        "sliceName" : "messageHeader",
        "short" : "Fetal Death Report Header",
        "definition" : "Fetal Death Report Header",
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
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:fetalDeathRecordParameters",
        "path" : "Bundle.entry",
        "sliceName" : "fetalDeathRecordParameters",
        "short" : "Submission Parameters",
        "definition" : "Submission Parameters",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:fetalDeathRecordParameters.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Parameters",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:fetalDeathReportDocument",
        "path" : "Bundle.entry",
        "sliceName" : "fetalDeathReportDocument",
        "short" : "Fetal Death Report Document",
        "definition" : "Fetal Death Report Document",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:fetalDeathReportDocument.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Bundle",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
            ]
          }
        ]
      }
    ]
  }
}

```
