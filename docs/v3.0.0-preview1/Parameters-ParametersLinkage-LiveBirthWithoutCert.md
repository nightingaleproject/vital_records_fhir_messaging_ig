# ParametersLinkage-LiveBirthWithoutCert - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParametersLinkage-LiveBirthWithoutCert**

## Example Parameters: ParametersLinkage-LiveBirthWithoutCert

Profile: [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametersLinkage-LiveBirthWithoutCert",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "notes",
      "valueString" : "Live Birth Without Certificate"
    },
    {
      "name" : "coded_outcome",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "281050002",
            "display" : "Livebirth"
          }
        ]
      }
    },
    {
      "name" : "birth_plurality",
      "valueInteger" : 1
    },
    {
      "name" : "fetal_death_plurality",
      "valueInteger" : 0
    },
    {
      "name" : "preg_status_is_correct",
      "valueBoolean" : false
    },
    {
      "name" : "corrected_pregnancy_status",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://hl7.org/fhir/us/vrdr/CodeSystem/CodeSystem-death-pregnancy-status",
            "code" : "4",
            "display" : "Not pregnant, but pregnant 43 days to 1 year before death"
          }
        ]
      }
    }
  ]
}

```
