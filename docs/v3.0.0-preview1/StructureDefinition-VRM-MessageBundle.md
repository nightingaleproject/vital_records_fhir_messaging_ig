# Placeholder Profile for profile-based slicing - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Placeholder Profile for profile-based slicing**

## Resource Profile: Placeholder Profile for profile-based slicing 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MessageBundle |

 
Placeholder for profile-based slicing 

**Usages:**

* Use this Profile: [Birth Report Message](StructureDefinition-VRM-BirthReportMessage.md), [Birth Report Update Message](StructureDefinition-VRM-BirthReportUpdateMessage.md), [Cause of Death Coding Message](StructureDefinition-VRM-CauseOfDeathCodingMessage.md), [Cause Of Death Coding Update Message](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md)...Show 9 more,[Coded Cause of Fetal Death Message](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md),[Coded Cause of Fetal Death Update Message](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.md),[Death Record Submission Message](StructureDefinition-VRM-DeathRecordSubmissionMessage.md),[Death Record Update Message](StructureDefinition-VRM-DeathRecordUpdateMessage.md),[Demographics Coding Message](StructureDefinition-VRM-DemographicsCodingMessage.md),[Demographics Coding Update Message](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md),[Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportMessage.md),[Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportUpdateMessage.md)and[Industry Occupation Coding Update Message](StructureDefinition-VRM-IndustryOccupationCodingUpdateMessage.md)
* Examples for this Profile: [Bundle/DummyBundle](Bundle-DummyBundle.md) and [Bundle/DummyDeathBundle](Bundle-DummyDeathBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-MessageBundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-MessageBundle.csv), [Excel](StructureDefinition-VRM-MessageBundle.xlsx), [Schematron](StructureDefinition-VRM-MessageBundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-MessageBundle",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle",
  "version" : "3.0.0-Preview1",
  "name" : "MessageBundle",
  "title" : "Placeholder Profile for profile-based slicing",
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
  "description" : "Placeholder for profile-based slicing",
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
      }
    ]
  }
}

```
