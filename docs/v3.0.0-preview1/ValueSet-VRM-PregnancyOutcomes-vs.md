# Pregnancy Outcome Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Pregnancy Outcome Values**

## ValueSet: Pregnancy Outcome Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-PregnancyOutcomes-vs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:PregnancyOutcomesVS |

 
Pregnancy Outcome Values 

 **References** 

* [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md)

### Logical Definition (CLD)

 

### Expansion

Expansion from tx.fhir.org based on:

* [codesystem Local Coded Pregnancy Status v3.0.0-Preview1 (CodeSystem)](CodeSystem-VRM-coded-pregnancy-status-cs.md)
* SNOMED CT United States edition 01-Mar 2025
* [codesystem NullFlavor v3.0.0 (CodeSystem)](http://terminology.hl7.org/7.0.0/CodeSystem-v3-NullFlavor.html)

This value set contains 9 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VRM-PregnancyOutcomes-vs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-PregnancyOutcomes-vs",
  "version" : "3.0.0-Preview1",
  "name" : "PregnancyOutcomesVS",
  "title" : "Pregnancy Outcome Values",
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
  "description" : "Pregnancy Outcome Values",
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "276507005",
            "display" : "Fetal Death"
          },
          {
            "code" : "281050002",
            "display" : "Live Birth"
          },
          {
            "code" : "17369002",
            "display" : "Spontaneous Abortion"
          },
          {
            "code" : "57797005",
            "display" : "Induced Abortion"
          },
          {
            "code" : "34801009",
            "display" : "Ectopic Pregnancy"
          },
          {
            "code" : "44782008",
            "display" : "Molar Pregnancy"
          }
        ]
      },
      {
        "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-coded-pregnancy-status-cs",
        "concept" : [
          {
            "code" : "live-birth-and-fetal-death",
            "display" : "Live birth(s) and fetal death(s)"
          }
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
        "concept" : [
          {
            "code" : "UNK",
            "display" : "Unknown"
          },
          {
            "code" : "OTH",
            "display" : "Other"
          }
        ]
      }
    ]
  }
}

```
