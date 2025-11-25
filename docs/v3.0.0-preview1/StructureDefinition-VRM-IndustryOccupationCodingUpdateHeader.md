# Industy Occupation Coding Update Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Industy Occupation Coding Update Header**

## Resource Profile: Industy Occupation Coding Update Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:IndustryOccupationCodingUpdateHeader |

 
Industry Occupation Coding Update Header 

The MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that was coded. When processing coding responses this identifier must be used to associate the coding content with the message that was coded. This association ensures clarity when a death record is submitted or updated multiple times, and coding responses are delivered for a subset of these submissions.

The MessageHeader.eventURI should be set as follows:

* Death: http://nchs.cdc.gov/vrdr_industryoccupation_coding_update
* Fetal Death: http://nchs.cdc.gov/fd_industryoccupation_coding_update
* Birth: http://nchs.cdc.gov/birth_industryoccupation_coding_update

**Usages:**

* Use this Profile: [Industry Occupation Coding Update Message](StructureDefinition-VRM-IndustryOccupationCodingUpdateMessage.md)
* Examples for this Profile: [MessageHeader/IndustryOccupationCodingUpdateHeader-Example1](MessageHeader-IndustryOccupationCodingUpdateHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.csv), [Excel](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.xlsx), [Schematron](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-IndustryOccupationCodingUpdateHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader",
  "version" : "3.0.0-Preview1",
  "name" : "IndustryOccupationCodingUpdateHeader",
  "title" : "Industy Occupation Coding Update  Header",
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
  "description" : "Industry Occupation Coding Update Header",
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MessageHeader",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MessageHeader",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MessageHeader",
        "path" : "MessageHeader"
      },
      {
        "id" : "MessageHeader.id",
        "path" : "MessageHeader.id",
        "min" : 1
      },
      {
        "id" : "MessageHeader.event[x]",
        "path" : "MessageHeader.event[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "MessageHeader.event[x]:eventUri",
        "path" : "MessageHeader.event[x]",
        "sliceName" : "eventUri",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "uri"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-IndustryOccupationUpdateHeaderURI-vs"
        }
      },
      {
        "id" : "MessageHeader.destination",
        "path" : "MessageHeader.destination",
        "min" : 1
      },
      {
        "id" : "MessageHeader.response.identifier",
        "path" : "MessageHeader.response.identifier",
        "short" : "The value of the MessageHeader.id for the Death Record message that is being coded"
      },
      {
        "id" : "MessageHeader.response.code",
        "path" : "MessageHeader.response.code",
        "fixedCode" : "ok"
      },
      {
        "id" : "MessageHeader.focus",
        "path" : "MessageHeader.focus",
        "min" : 1,
        "max" : "2"
      }
    ]
  }
}

```
