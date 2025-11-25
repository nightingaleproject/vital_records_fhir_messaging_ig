# Outcome Profile - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Outcome Profile**

## Resource Profile: Outcome Profile 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:Outcome |

 
Outcome profile to support profile-based slicing of bundles 

**Usages:**

* Use this Profile: [Acknowledgement Message](StructureDefinition-VRM-AcknowledgementMessage.md) and [Extraction Error Message](StructureDefinition-VRM-ExtractionErrorMessage.md)
* Refer to this Profile: [Extraction Error Header](StructureDefinition-VRM-ExtractionErrorHeader.md)
* Examples for this Profile: [OperationOutcome/Outcome-Example1](OperationOutcome-Outcome-Example1.md) and [OperationOutcome/Outcome-Example2](OperationOutcome-Outcome-Example2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-Outcome)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-Outcome.csv), [Excel](StructureDefinition-VRM-Outcome.xlsx), [Schematron](StructureDefinition-VRM-Outcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-Outcome",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome",
  "version" : "3.0.0-Preview1",
  "name" : "Outcome",
  "title" : "Outcome Profile",
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
  "description" : "Outcome profile to support profile-based slicing of bundles",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "OperationOutcome",
        "path" : "OperationOutcome"
      }
    ]
  }
}

```
