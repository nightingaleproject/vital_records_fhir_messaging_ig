# Cause of Death Coding Update Header - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Cause of Death Coding Update Header**

## Resource Profile: Cause of Death Coding Update Header 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CauseOfDeathCodingUpdateHeader |

 
Cause of Death Coding Update Header 

The CauseOfDeathCodingUpdate Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being coded. When processing acknowledgements this identifier must be used to associate the coded information with the message that is being coded. This association is the basis for implementing reliable messaging.

The MessageHeader.eventURI should be set as follows:

* Death: http://nchs.cdc.gov/vrdr_causeofdeath_coding_update
* Fetal Death: http://nchs.cdc.gov/fd_causeofdeath_coding_update

**Usages:**

* Use this Profile: [Cause Of Death Coding Update Message](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md) and [Coded Cause of Fetal Death Update Message](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.md)
* Examples for this Profile: [MessageHeader/CauseOfDeathCodingUpdateHeader-Example1](MessageHeader-CauseOfDeathCodingUpdateHeader-Example1.md) and [MessageHeader/CodedCauseOfFetalDeathUpdateHeader-Example1](MessageHeader-CodedCauseOfFetalDeathUpdateHeader-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.csv), [Excel](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.xlsx), [Schematron](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-CauseOfDeathCodingUpdateHeader",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingUpdateHeader",
  "version" : "3.0.0-Preview1",
  "name" : "CauseOfDeathCodingUpdateHeader",
  "title" : "Cause of Death Coding Update Header",
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
  "description" : "Cause of Death Coding Update Header",
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
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-CauseOfDeathCodingUpdateHeaderURI-vs"
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
