# MaternalLinkageBundle-EctopicPregnancy - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MaternalLinkageBundle-EctopicPregnancy**

## Example Bundle: MaternalLinkageBundle-EctopicPregnancy

Profile: [Maternal Linkage Content Bundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md)

Bundle MaternalLinkageBundle-EctopicPregnancy of type collection

-------

Entry 1 - fullUrl = http://www.example.org/fhir/Parameter/ParametersLinkage-EctopicPregnancy

Resource Parameters:

> 

Profile: [Recent Pregnancy Parameters](StructureDefinition-VRM-RecentPregnancyParameters.md)

## Parameters




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "MaternalLinkageBundle-EctopicPregnancy",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-maternal-linkage-content-bundle"
    ]
  },
  "identifier" : {
    "value" : "placeholder"
  },
  "type" : "collection",
  "entry" : [
    {
      "fullUrl" : "http://www.example.org/fhir/Parameter/ParametersLinkage-EctopicPregnancy",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "ParametersLinkage-EctopicPregnancy",
        "meta" : {
          "profile" : [
            "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-RecentPregnancyParameters"
          ]
        },
        "parameter" : [
          {
            "name" : "notes",
            "valueString" : "Ectopic Pregnancy"
          },
          {
            "name" : "coded_outcome",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "34801009",
                  "display" : "Ectopic Pregnancy"
                }
              ]
            }
          },
          {
            "name" : "birth_plurality",
            "valueInteger" : 0
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
    }
  ]
}

```
