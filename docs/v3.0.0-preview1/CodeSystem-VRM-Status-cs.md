# Status Codes Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Status Codes Values**

## CodeSystem: Status Codes Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-Status-cs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:StatusCS |

 
Status Codes Values 

 This Code system is referenced in the content logical definition of the following value sets: 

* [StatusVS](ValueSet-VRM-Status-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VRM-Status-cs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-Status-cs",
  "version" : "3.0.0-Preview1",
  "name" : "StatusCS",
  "title" : "Status Codes Values",
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
  "description" : "Status Codes Values",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "manualCauseOfDeathCoding",
      "display" : "Manual Cause of Death Coding",
      "definition" : "The death record has been sent for manual cause of death coding."
    },
    {
      "code" : "manualDemographicCoding",
      "display" : "Manual Demographic  Coding",
      "definition" : "The death record has been sent for manual demographic (race/ethnicity) coding."
    },
    {
      "code" : "noCodingNeeded_Duplicate",
      "display" : "No Coding Needed - Duplicate",
      "definition" : "The death record is a duplicate of a previously submitted record, no coding will be performed."
    },
    {
      "code" : "manualCodingCanceled_Update",
      "display" : "Manual Coding Canceled - Update",
      "definition" : "An update has been submitted for a death record that is queued for manual coding.  The manual coding\r\nhas been canceled for the original record."
    },
    {
      "code" : "manualCodingCanceled_Void",
      "display" : "Manual Coding Canceled - Void",
      "definition" : "A void request has been received for a death record that is queued for manual coding.  The manual coding\r\nhas been canceled for the original record."
    },
    {
      "code" : "nonCodeable",
      "display" : "Non Codeable",
      "definition" : "The fetal death record does not meet the criteria for fetal cause of death coding."
    }
  ]
}

```
