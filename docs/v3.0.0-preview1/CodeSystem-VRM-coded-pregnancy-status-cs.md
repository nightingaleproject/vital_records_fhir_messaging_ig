# Local Coded Pregnancy Status - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Local Coded Pregnancy Status**

## CodeSystem: Local Coded Pregnancy Status 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-coded-pregnancy-status-cs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CodedPregnancyStatusCS |

 
Codesystem for pregnancy status for cases not covered by SNOMEDCT. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PregnancyOutcomesVS](ValueSet-VRM-PregnancyOutcomes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VRM-coded-pregnancy-status-cs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-coded-pregnancy-status-cs",
  "version" : "3.0.0-Preview1",
  "name" : "CodedPregnancyStatusCS",
  "title" : "Local Coded Pregnancy Status",
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
  "description" : "Codesystem for pregnancy status for cases not covered by SNOMEDCT.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [
    {
      "code" : "live-birth-and-fetal-death",
      "display" : "Multiple Outcomes (Live Birth(s) and Fetal Death(s))"
    }
  ]
}

```
