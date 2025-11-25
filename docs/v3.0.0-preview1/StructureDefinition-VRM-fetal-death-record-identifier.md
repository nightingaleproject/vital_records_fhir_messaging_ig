# Fetal Death Record Identifier - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Fetal Death Record Identifier**

## Resource Profile: Fetal Death Record Identifier 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:FetalDeathRecordIdentifier |

 
Fetal Death Record Identifier (Observation). For use in Maternal Death. This includes the fetal death record identifier, the jurisdiction, and the birth year. The subject is implicitly the Decedent (mother), whose death was related to the fetal death referenced by the identifier. 

**Usages:**

* Use this Profile: [Maternal Linkage Content Bundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md)
* Examples for this Profile: [Observation/FetalDeathRecordIdentifier-Example1](Observation-FetalDeathRecordIdentifier-Example1.md), [Observation/FetalDeathRecordIdentifier-Example2](Observation-FetalDeathRecordIdentifier-Example2.md), [Observation/FetalDeathRecordIdentifier-ExtensiveExample1](Observation-FetalDeathRecordIdentifier-ExtensiveExample1.md), [Observation/FetalDeathRecordIdentifier-ExtesnvieExample2](Observation-FetalDeathRecordIdentifier-ExtesnvieExample2.md)...Show 2 more,[Observation/FetalDeathRecordIdentifierNoCert-Example3](Observation-FetalDeathRecordIdentifierNoCert-Example3.md)and[Observation/FetalDeathRecordIdentifierNoCert-Example4](Observation-FetalDeathRecordIdentifierNoCert-Example4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-fetal-death-record-identifier)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-fetal-death-record-identifier.csv), [Excel](StructureDefinition-VRM-fetal-death-record-identifier.xlsx), [Schematron](StructureDefinition-VRM-fetal-death-record-identifier.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-fetal-death-record-identifier",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-fetal-death-record-identifier",
  "version" : "3.0.0-Preview1",
  "name" : "FetalDeathRecordIdentifier",
  "title" : "Fetal Death Record Identifier",
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
  "description" : "Fetal Death Record Identifier (Observation).  For use in Maternal Death. This includes the fetal death record identifier, the jurisdiction, and the birth year.\r\nThe subject is implicitly the Decedent (mother), whose death was related to the fetal death referenced by the identifier.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
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
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation.status",
        "path" : "Observation.status",
        "fixedCode" : "final"
      },
      {
        "id" : "Observation.code",
        "path" : "Observation.code",
        "short" : "Fetal Death Record Number",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs",
              "code" : "fetaldeathrecordidentifier"
            }
          ]
        }
      },
      {
        "id" : "Observation.focus",
        "path" : "Observation.focus",
        "max" : "0"
      },
      {
        "id" : "Observation.value[x]",
        "path" : "Observation.value[x]",
        "short" : "Fetal Death Record number.  Six digit number.  Leading zeroes are optional.",
        "type" : [
          {
            "code" : "string"
          }
        ],
        "maxLength" : 6
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "code"
            }
          ],
          "rules" : "open"
        }
      },
      {
        "id" : "Observation.component:deathJurisdiction",
        "path" : "Observation.component",
        "sliceName" : "deathJurisdiction",
        "short" : "Record Jurisdiction",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:deathJurisdiction.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "77969-4"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:deathJurisdiction.value[x]",
        "path" : "Observation.component.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/us/vr-common-library/ValueSet/ValueSet-jurisdiction-vr"
        }
      },
      {
        "id" : "Observation.component:year",
        "path" : "Observation.component",
        "sliceName" : "year",
        "short" : "Year of Fetal Death",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:year.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "81954-0"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:year.value[x]",
        "path" : "Observation.component.value[x]",
        "comment" : "The record year is expressed using the YYYY portion of date.",
        "min" : 1,
        "type" : [
          {
            "code" : "dateTime"
          }
        ]
      },
      {
        "id" : "Observation.component:index",
        "path" : "Observation.component",
        "sliceName" : "index",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:index.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "index"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:index.value[x]",
        "path" : "Observation.component.value[x]",
        "comment" : "The index of this record among birth or fetal death certificates of the same type.",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Observation.component:cert_available",
        "path" : "Observation.component",
        "sliceName" : "cert_available",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:cert_available.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "code" : "availability"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:cert_available.value[x]",
        "path" : "Observation.component.value[x]",
        "comment" : "Code for Availability of this certificate.",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-CertAvailable-vs"
        }
      }
    ]
  }
}

```
