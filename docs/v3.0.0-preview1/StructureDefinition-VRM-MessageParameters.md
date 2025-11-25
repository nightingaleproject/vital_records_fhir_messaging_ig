# Message Parameters - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Message Parameters**

## Resource Profile: Message Parameters 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MessageParameters |

 
Parameter set for most Messages. Parameters with all-caps names are defined as per the 2022 IJE specification. 

These parameters are included to enable processing and routing of messages without needing to parse the associated message payload. The values included in the message parameters **MUST** precisely match the values of the same fields included in the death or fetal death record submission.

Note that in v2.0 of this IG, the message parameters have been consolidated – the same parameters are used pretty much throughout. The use of death_year is allowed for backwards compatibility, but will eventually be retired. Please use event_year for all events, including death.

Parameters included:

| | | | |
| :--- | :--- | :--- | :--- |
| DSTATE, BSTATE or FDSTATE | State, U.S. Territory or Canadian Province of Event - code | jurisdiction_id | string(2) from[JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html) |
| FILENO | Certificate Number | cert_no | string(6) |
| DOD_YR | Date of Death–Year | death_year(allowed, but being phased out) | string(4) |
| DOD_YR, DOB_YR, FDOB_YR | Date of event–Year | event_year (preferred) | string(4) |
| AUXNO | Auxiliary State file number | state_auxiliary_id | string(12) |
| - | Payload Version ID | payload_version_id | string from[PayloadVersionVS](ValueSet-Payload-version-vs.md) |

**Usages:**

* Use this Profile: [Birth Report Message](StructureDefinition-VRM-BirthReportMessage.md), [Birth Report Update Message](StructureDefinition-VRM-BirthReportUpdateMessage.md), [Cause of Death Coding Message](StructureDefinition-VRM-CauseOfDeathCodingMessage.md), [Cause Of Death Coding Update Message](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md)...Show 13 more,[Coded Cause of Fetal Death Message](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md),[Coded Cause of Fetal Death Update Message](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.md),[Death Record Submission Message](StructureDefinition-VRM-DeathRecordSubmissionMessage.md),[Death Record Update Message](StructureDefinition-VRM-DeathRecordUpdateMessage.md),[Demographics Coding Message](StructureDefinition-VRM-DemographicsCodingMessage.md),[Demographics Coding Update Message](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md),[Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportMessage.md),[Fetal Death Report Message](StructureDefinition-VRM-FetalDeathReportUpdateMessage.md),[Industry Occupation Coding Message](StructureDefinition-VRM-IndustryOccupationCodingMessage.md),[Industry Occupation Coding Update Message](StructureDefinition-VRM-IndustryOccupationCodingUpdateMessage.md),[Maternal Linkage Request Message](StructureDefinition-VRM-MaternalLinkageRequestMessage.md),[Maternal Linkage Submission Message](StructureDefinition-VRM-MaternalLinkageSubmissionMessage.md)and[Maternal Linkage Update Message](StructureDefinition-VRM-MaternalLinkageUpdateMessage.md)
* Refer to this Profile: [Acknowledgement Header](StructureDefinition-VRM-AcknowledgementHeader.md) and [Extraction Error Header](StructureDefinition-VRM-ExtractionErrorHeader.md)
* Examples for this Profile: [Parameters/Parameters-Example1](Parameters-Parameters-Example1.md), [Parameters/ParametersBirth-Example1](Parameters-ParametersBirth-Example1.md), [Parameters/ParametersDeathExample1](Parameters-ParametersDeathExample1.md) and [Parameters/ParametersFD-Example2](Parameters-ParametersFD-Example2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-MessageParameters)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-MessageParameters.csv), [Excel](StructureDefinition-VRM-MessageParameters.xlsx), [Schematron](StructureDefinition-VRM-MessageParameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-MessageParameters",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters",
  "version" : "3.0.0-Preview1",
  "name" : "MessageParameters",
  "title" : "Message Parameters",
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
  "description" : "Parameter set for most Messages.  Parameters with all-caps names are defined as per the 2022 IJE specification.",
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
        },
        "min" : 1
      },
      {
        "id" : "Parameters.parameter:jurisdiction_id",
        "path" : "Parameters.parameter",
        "sliceName" : "jurisdiction_id",
        "short" : "jurisdiction identifier",
        "definition" : "2 character identifier for one of 57 reporting jurisdictions",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:jurisdiction_id.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:jurisdiction_id.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "jurisdiction_id"
      },
      {
        "id" : "Parameters.parameter:jurisdiction_id.value[x]",
        "path" : "Parameters.parameter.value[x]",
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
        "id" : "Parameters.parameter:jurisdiction_id.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:jurisdiction_id.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:cert_no",
        "path" : "Parameters.parameter",
        "sliceName" : "cert_no",
        "short" : "FILENO death certificate number",
        "definition" : "death certificate number",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:cert_no.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:cert_no.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "cert_no"
      },
      {
        "id" : "Parameters.parameter:cert_no.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "unsignedInt"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:cert_no.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:cert_no.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:death_year",
        "path" : "Parameters.parameter",
        "sliceName" : "death_year",
        "short" : "DOD_YR death year",
        "definition" : "four digit death year",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:death_year.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:death_year.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "death_year"
      },
      {
        "id" : "Parameters.parameter:death_year.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "unsignedInt"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:death_year.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:death_year.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:event_year",
        "path" : "Parameters.parameter",
        "sliceName" : "event_year",
        "short" : "DOD_YR or DOB_YR or FDOD_YR event year",
        "definition" : "four digit event year",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:event_year.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:event_year.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "event_year"
      },
      {
        "id" : "Parameters.parameter:event_year.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "unsignedInt"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:event_year.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:event_year.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id",
        "path" : "Parameters.parameter",
        "sliceName" : "state_auxiliary_id",
        "short" : "AUXNO state auxiliary identifier",
        "definition" : "state auxiliary identifier",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "state_auxiliary_id"
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:state_auxiliary_id.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:payload_version_id",
        "path" : "Parameters.parameter",
        "sliceName" : "payload_version_id",
        "short" : "Payload version identifier",
        "definition" : "payload version identifier",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:payload_version_id.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:payload_version_id.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "payload_version_id"
      },
      {
        "id" : "Parameters.parameter:payload_version_id.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ],
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/Payload-version-vs"
        }
      },
      {
        "id" : "Parameters.parameter:payload_version_id.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:payload_version_id.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
