# Cause Of Death Coding Update Message - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause Of Death Coding Update Message**

## Resource Profile: Cause Of Death Coding Update Message 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateMessage | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CauseOfDeathCodingUpdateMessage |

 
Message for updating Cause Of Death coding response to death records 

The CodingMessage’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that was coded. When processing coding responses this identifier must be used to associate the coding content with the message that was coded. This association ensures clarity when a death or fetal death is submitted or updated multiple times, and coding responses are delivered for a subset of these submissions. 

**Usages:**

* Examples for this Profile: [Bundle/CauseOfDeathCodingUpdateMessage1](Bundle-CauseOfDeathCodingUpdateMessage1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-CauseOfDeathCodingUpdateMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.csv), [Excel](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.xlsx), [Schematron](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-CauseOfDeathCodingUpdateMessage",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateMessage",
  "version" : "3.0.0-Preview1",
  "name" : "CauseOfDeathCodingUpdateMessage",
  "title" : "Cause Of Death Coding Update Message",
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
  "description" : "Message for updating Cause Of Death coding response to death records",
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
        "id" : "Bundle.entry:header",
        "path" : "Bundle.entry",
        "sliceName" : "header",
        "short" : "Cause Of Death Coding  Update Header",
        "definition" : "Cause Of Death Coding  Update Header",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:header.resource",
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
        "id" : "Bundle.entry:msgpar",
        "path" : "Bundle.entry",
        "sliceName" : "msgpar",
        "short" : "Message Parameters",
        "definition" : "Message Parameters",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:msgpar.resource",
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
        "id" : "Bundle.entry:codedcontentbundle",
        "path" : "Bundle.entry",
        "sliceName" : "codedcontentbundle",
        "short" : "Cause of Death Coded Content Bundle",
        "definition" : "CauseOfDeathCodedContentBundle",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:codedcontentbundle.resource",
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
