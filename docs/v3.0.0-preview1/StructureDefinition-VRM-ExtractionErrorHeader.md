# Extraction Error Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extraction Error Header**

## Resource Profile: Extraction Error Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:ExtractionErrorHeader |

 
Extraction Error Message Header 

The ExtractionError Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message on which errors are being reported. When processing acknowledgements this identifier must be used to associate the extraction errors with the message that is being acknowledged. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:

* Death: http://nchs.cdc.gov/vrdr_extraction_error
* Fetal Death: http://nchs.cdc.gov/fd_extraction_error
* Birth: http://nchs.cdc.gov/birth_extraction_error

**Usages:**

* Use this Profile: [Extraction Error Message](StructureDefinition-VRM-ExtractionErrorMessage.md)
* Examples for this Profile: [MessageHeader/ExtractionErrorHeader-Example1](MessageHeader-ExtractionErrorHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-ExtractionErrorHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-ExtractionErrorHeader.csv), [Excel](StructureDefinition-VRM-ExtractionErrorHeader.xlsx), [Schematron](StructureDefinition-VRM-ExtractionErrorHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-ExtractionErrorHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorHeader",
  "version" : "3.0.0-Preview1",
  "name" : "ExtractionErrorHeader",
  "title" : "Extraction Error Header",
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
  "description" : "Extraction Error Message Header",
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
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-ExtractionErrorHeaderURI-vs"
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
        "short" : "The value of the MessageHeader.id for the message with errors"
      },
      {
        "id" : "MessageHeader.response.code",
        "path" : "MessageHeader.response.code",
        "fixedCode" : "fatal-error"
      },
      {
        "id" : "MessageHeader.response.details",
        "path" : "MessageHeader.response.details",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-Outcome"
            ]
          }
        ]
      },
      {
        "id" : "MessageHeader.focus",
        "path" : "MessageHeader.focus",
        "min" : 1,
        "max" : "2",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
            ]
          }
        ]
      }
    ]
  }
}

```
