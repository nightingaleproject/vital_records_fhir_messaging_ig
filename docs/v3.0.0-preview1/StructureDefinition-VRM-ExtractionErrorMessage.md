# Extraction Error Message - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extraction Error Message**

## Resource Profile: Extraction Error Message 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorMessage | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:ExtractionErrorMessage |

 
Message for Errors during content extraction 

The ErrorMessage’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message for which an error is being reported. When processing error responses this identifier must be used to associate the errors with the message that they refer to. This association ensures clarity when a death record is submitted or updated multiple times, and error responses are delivered for a subset of these submissions.

For submissions to NCHS, the set of current error messages are listed and described [here](business_rules_death.md). 

**Usages:**

* Examples for this Profile: [Bundle/ExtractionErrorMessage-Example1](Bundle-ExtractionErrorMessage-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-ExtractionErrorMessage)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-ExtractionErrorMessage.csv), [Excel](StructureDefinition-VRM-ExtractionErrorMessage.xlsx), [Schematron](StructureDefinition-VRM-ExtractionErrorMessage.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-ExtractionErrorMessage",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorMessage",
  "version" : "3.0.0-Preview1",
  "name" : "ExtractionErrorMessage",
  "title" : "Extraction Error Message",
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
  "description" : "Message for Errors during content extraction",
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
        "short" : "Extraction Error Header",
        "definition" : "Extraction Error Header",
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
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorHeader"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:extractionErrorParameters",
        "path" : "Bundle.entry",
        "sliceName" : "extractionErrorParameters",
        "short" : "Extraction Error Parameters",
        "definition" : "Extraction Error Parameters",
        "min" : 0,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:extractionErrorParameters.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Parameters"
          }
        ]
      },
      {
        "id" : "Bundle.entry:extractionErrorOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "extractionErrorOutcome",
        "short" : "Extraction Error Operation Outcome",
        "definition" : "Extraction Error Operation Outcome",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Bundle.entry:extractionErrorOutcome.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "OperationOutcome",
            "profile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
            ]
          }
        ]
      }
    ]
  }
}

```
