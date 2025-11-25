# Recent Pregnancy Parameters - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recent Pregnancy Parameters**

## Resource Profile: Recent Pregnancy Parameters 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:RecentPregnancyParameters |

 
Parameter for most recent pregnancy during year before decease. 

**Usages:**

* Use this Profile: [Maternal Linkage Content Bundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md)
* Examples for this Profile: [Parameters/ParametersLinkage-EctopicPregnancy](Parameters-ParametersLinkage-EctopicPregnancy.md), [Parameters/ParametersLinkage-Extensive-PluralBirthAndFetalDeath](Parameters-ParametersLinkage-Extensive-PluralBirthAndFetalDeath.md), [Parameters/ParametersLinkage-FetalDeathWithCertPending](Parameters-ParametersLinkage-FetalDeathWithCertPending.md), [Parameters/ParametersLinkage-LiveBirthWithCert](Parameters-ParametersLinkage-LiveBirthWithCert.md)...Show 4 more,[Parameters/ParametersLinkage-LiveBirthWithPendingCert](Parameters-ParametersLinkage-LiveBirthWithPendingCert.md),[Parameters/ParametersLinkage-LiveBirthWithoutCert](Parameters-ParametersLinkage-LiveBirthWithoutCert.md),[Parameters/ParametersLinkage-PluralBirthAndFetalDeath](Parameters-ParametersLinkage-PluralBirthAndFetalDeath.md)and[Parameters/ParametersLinkage-PluralBirthWithCert](Parameters-ParametersLinkage-PluralBirthWithCert.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-RecentPregnancyParameters)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-RecentPregnancyParameters.csv), [Excel](StructureDefinition-VRM-RecentPregnancyParameters.xlsx), [Schematron](StructureDefinition-VRM-RecentPregnancyParameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-RecentPregnancyParameters",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters",
  "version" : "3.0.0-Preview1",
  "name" : "RecentPregnancyParameters",
  "title" : "Recent Pregnancy Parameters",
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
  "description" : "Parameter for most recent pregnancy during year before decease.",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Parameters",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Parameters",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Parameters.id",
        "path" : "Parameters.id",
        "mustSupport" : true
      },
      {
        "id" : "Parameters.parameter",
        "path" : "Parameters.parameter",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "name"
            }
          ],
          "description" : "Slicing based on the profile conformance of the sliced element",
          "rules" : "open"
        }
      },
      {
        "id" : "Parameters.parameter:notes",
        "path" : "Parameters.parameter",
        "sliceName" : "notes",
        "short" : "Notes",
        "definition" : "Notes",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:notes.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:notes.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "notes"
      },
      {
        "id" : "Parameters.parameter:notes.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "maxLength" : 100
      },
      {
        "id" : "Parameters.parameter:notes.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:notes.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:coded_outcome",
        "path" : "Parameters.parameter",
        "sliceName" : "coded_outcome",
        "short" : "coded outcome",
        "definition" : "coded_outcome",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:coded_outcome.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:coded_outcome.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "coded_outcome"
      },
      {
        "id" : "Parameters.parameter:coded_outcome.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-PregnancyOutcomes-vs"
        }
      },
      {
        "id" : "Parameters.parameter:coded_outcome.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:coded_outcome.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:birth_plurality",
        "path" : "Parameters.parameter",
        "sliceName" : "birth_plurality",
        "short" : "Birth Plurality",
        "definition" : "Birth Plurality",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:birth_plurality.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:birth_plurality.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "birth_plurality"
      },
      {
        "id" : "Parameters.parameter:birth_plurality.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:birth_plurality.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:birth_plurality.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality",
        "path" : "Parameters.parameter",
        "sliceName" : "fetal_death_plurality",
        "short" : "Fetal Death Plurality",
        "definition" : "Fetal Death Plurality",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "fetal_death_plurality"
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "integer"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:fetal_death_plurality.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct",
        "path" : "Parameters.parameter",
        "sliceName" : "preg_status_is_correct",
        "short" : "Pregnancy Status on Death Record is Correct",
        "definition" : "Pregnancy Status on Death Record is Correct",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "preg_status_is_correct"
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "boolean"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:preg_status_is_correct.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status",
        "path" : "Parameters.parameter",
        "sliceName" : "corrected_pregnancy_status",
        "short" : "Corrected Pregnancy Status",
        "definition" : "Corrected Pregnancy Status",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "corrected_pregnancy_status"
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "CodeableConcept"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://hl7.org/fhir/us/vrdr/ValueSet/vrdr-death-pregnancy-status-vs"
        }
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:corrected_pregnancy_status.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
