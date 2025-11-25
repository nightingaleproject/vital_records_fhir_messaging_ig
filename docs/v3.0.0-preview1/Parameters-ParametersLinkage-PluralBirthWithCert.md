# ParametersLinkage-PluralBirthWithCert - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParametersLinkage-PluralBirthWithCert**

## Example Parameters: ParametersLinkage-PluralBirthWithCert

Profile: [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametersLinkage-PluralBirthWithCert",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "notes",
      "valueString" : "Plural Live Birth With Certificate"
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
      "valueInteger" : 2
    },
    {
      "name" : "fetal_death_plurality",
      "valueInteger" : 0
    },
    {
      "name" : "preg_status_is_correct",
      "valueBoolean" : true
    }
  ]
}

```
