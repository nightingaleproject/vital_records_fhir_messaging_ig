# Coded Cause of Fetal Death Update Message - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Coded Cause of Fetal Death Update Message**

## Resource Profile: Coded Cause of Fetal Death Update Message 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CodedCauseOfFetalDeathUpdateMessage | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CodedCauseOfFetalDeathUpdateMessage |

 
Message for updating coded cause of fetal death 

The CodingMessage’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that was coded. When processing coding responses this identifier must be used to associate the coding content with the message that was coded. This association ensures clarity when a fetal death is submitted or updated multiple times, and coding responses are delivered for a subset of these submissions. 

**Usages:**

* Examples for this Profile: [Bundle/CodedCauseOfFetalDeathUpdateMessage-Example1](Bundle-CodedCauseOfFetalDeathUpdateMessage-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-CodedCauseOfFetalDeathUpdateMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.csv), [Excel](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.xlsx), [Schematron](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-CodedCauseOfFetalDeathUpdateMessage",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CodedCauseOfFetalDeathUpdateMessage",
  "version" : "3.0.0-Preview1",
  "name" : "CodedCauseOfFetalDeathUpdateMessage",
  "title" : "Coded Cause of Fetal Death Update Message",
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
  "description" : "Message for updating coded cause of fetal death",
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
        "short" : "Coded Cause of Fetal Death Update Header",
        "definition" : "Coded Cause of Fetal Death Update Header",
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
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader"
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
        "id" : "Bundle.entry:codedCauseOfFetalDeathDocument",
        "path" : "Bundle.entry",
        "sliceName" : "codedCauseOfFetalDeathDocument",
        "short" : "Coded Cause of Fetal Death Document",
        "definition" : "Coded Cause of Fetal Death Document",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:codedCauseOfFetalDeathDocument.resource",
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
