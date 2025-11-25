# ParametersLinkage-Extensive-PluralBirthAndFetalDeath - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParametersLinkage-Extensive-PluralBirthAndFetalDeath**

## Example Parameters: ParametersLinkage-Extensive-PluralBirthAndFetalDeath

Profile: [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ParametersLinkage-Extensive-PluralBirthAndFetalDeath",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
    ]
  },
  "parameter" : [
    {
      "name" : "notes",
      "valueString" : "This is a long example of notes to use all characters. Long example of notes to use characters. Test"
    },
    {
      "name" : "coded_outcome",
      "valueCodeableConcept" : {
        "coding" : [
          {
            "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-coded-pregnancy-status-cs",
            "code" : "live-birth-and-fetal-death",
            "display" : "Multiple Outcomes (Live Birth(s) and Fetal Death(s))"
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
      "valueInteger" : 2
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
