# Cause of Death Coding Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause of Death Coding Header**

## Resource Profile: Cause of Death Coding Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CauseOfDeathCodingHeader |

 
Cause of Death Coding Header 

The CauseOfDeathCoding Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being coded. When processing acknowledgements this identifier must be used to associate the coded information with the message that is being coded. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:

* Death: http://nchs.cdc.gov/vrdr_causeofdeath_coding
* Fetal Death: http://nchs.cdc.gov/fd_causeofdeath_coding

**Usages:**

* Use this Profile: [Cause of Death Coding Message](StructureDefinition-VRM-CauseOfDeathCodingMessage.md) and [Coded Cause of Fetal Death Message](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md)
* Examples for this Profile: [MessageHeader/CauseOfDeathCodingHeader-Example1](MessageHeader-CauseOfDeathCodingHeader-Example1.md) and [MessageHeader/CodedCauseOfFetalDeathHeader-Example1](MessageHeader-CodedCauseOfFetalDeathHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-CauseOfDeathCodingHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-CauseOfDeathCodingHeader.csv), [Excel](StructureDefinition-VRM-CauseOfDeathCodingHeader.xlsx), [Schematron](StructureDefinition-VRM-CauseOfDeathCodingHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-CauseOfDeathCodingHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingHeader",
  "version" : "3.0.0-Preview1",
  "name" : "CauseOfDeathCodingHeader",
  "title" : "Cause of Death Coding Header",
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
  "description" : "Cause of Death Coding Header",
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
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-CauseOfDeathCodingHeaderURI-vs"
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
        "short" : "The value of the MessageHeader.id for the Death or Fetal Death Record message that is being coded"
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
