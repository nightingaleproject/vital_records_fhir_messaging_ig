# Birth Record Identifier Child - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Birth Record Identifier Child**

## Resource Profile: Birth Record Identifier Child 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:BirthRecordIdentifierChild |

 
Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child. The subject is implicitly the Decedent (mother), whose death was related to the to the birth referenced by the identifier. 

**Usages:**

* Use this Profile: [Maternal Linkage Content Bundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md)
* Examples for this Profile: [Observation/BirthRecordIdentifierChild-Example1](Observation-BirthRecordIdentifierChild-Example1.md), [Observation/BirthRecordIdentifierChild-Example2](Observation-BirthRecordIdentifierChild-Example2.md), [Observation/BirthRecordIdentifierChild-ExtensiveExample1](Observation-BirthRecordIdentifierChild-ExtensiveExample1.md), [Observation/BirthRecordIdentifierChild-ExtensiveExample2](Observation-BirthRecordIdentifierChild-ExtensiveExample2.md) and [Observation/BirthRecordIdentifierChildNoCert-Example1](Observation-BirthRecordIdentifierChildNoCert-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-birth-record-identifier-child)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-birth-record-identifier-child.csv), [Excel](StructureDefinition-VRM-birth-record-identifier-child.xlsx), [Schematron](StructureDefinition-VRM-birth-record-identifier-child.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-birth-record-identifier-child",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-birth-record-identifier-child",
  "version" : "3.0.0-Preview1",
  "name" : "BirthRecordIdentifierChild",
  "title" : "Birth Record Identifier Child",
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
  "description" : "Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child.\r\nThe subject is implicitly the Decedent (mother), whose death was related to the to the birth referenced by the identifier.",
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
        "short" : "Child's Birth registry number",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-observation-cs",
              "code" : "birthrecordidentifier"
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
        "short" : "Child's Birth Record number.  Six digit number.  Leading zeroes are optional.",
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
        "id" : "Observation.component:birthJurisdiction",
        "path" : "Observation.component",
        "sliceName" : "birthJurisdiction",
        "short" : "Record Jurisdiction",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:birthJurisdiction.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "21842-0"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:birthJurisdiction.value[x]",
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
        "id" : "Observation.component:birthYear",
        "path" : "Observation.component",
        "sliceName" : "birthYear",
        "short" : "Year of Child's Birth",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Observation.component:birthYear.code",
        "path" : "Observation.component.code",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "80904-6"
            }
          ]
        }
      },
      {
        "id" : "Observation.component:birthYear.value[x]",
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
