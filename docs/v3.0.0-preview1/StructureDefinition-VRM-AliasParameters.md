# Alias Message Parameters - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alias Message Parameters**

## Resource Profile: Alias Message Parameters 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasParameters | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:AliasParameters |

 
Parameters for an Alias Message 

Parameters included:

| | | | |
| :--- | :--- | :--- | :--- |
| DSTATE | State, U.S. Territory or Canadian Province of Death - code | jurisdiction_id | string(2) from[JurisdictionVS](https://build.fhir.org/ig/HL7/vrdr//ValueSet-vrdr-jurisdiction-vs.html) |
| FILENO | Certificate Number | cert_no | string(6) |
| DOD_YR | Date of Death–Year | death_yr | string(4) |
| GNAME | Alias: Decedent first/given name | alias_decedent_first_name | string |
| LNAME | Alias: Decedent last/sur name | alias_decedent_last_name | string |
| MNAME | Alias: Decedent middle name | alias_decedent_middle_name | string |
| SUFF | Alias: Decedent name suffix | alias_decedent_name_suffix | string |
| FLNAME | Alias: Father last/sur name | alias_father_surname | string(6) |
| SSN | Alias: Decedent Social Security Number | alias_social_security_number | string |

**Usages:**

* Use this Profile: [Death Record Alias Message](StructureDefinition-VRM-DeathRecordAliasMessage.md)
* Refer to this Profile: [Alias Header](StructureDefinition-VRM-AliasHeader.md)
* Examples for this Profile: [Parameters/AliasParameters-Example1](Parameters-AliasParameters-Example1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/vital-records-fhir-messaging|current/StructureDefinition/VRM-AliasParameters)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VRM-AliasParameters.csv), [Excel](StructureDefinition-VRM-AliasParameters.xlsx), [Schematron](StructureDefinition-VRM-AliasParameters.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VRM-AliasParameters",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasParameters",
  "version" : "3.0.0-Preview1",
  "name" : "AliasParameters",
  "title" : "Alias Message Parameters",
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
  "description" : "Parameters for an Alias Message",
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
        "id" : "Parameters",
        "path" : "Parameters"
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
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_decedent_first_name",
        "short" : "ALIAS: GNAME Decendent first name",
        "definition" : "ALIAS: Decendent first name.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_decedent_first_name"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_first_name.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_decedent_last_name",
        "short" : "ALIAS: LNAME Decedent last Name",
        "definition" : "ALIAS: Decedent Last Name.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_decedent_last_name"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_last_name.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_decedent_middle_name",
        "short" : "ALIAS: MNAME Decedent Middle Name",
        "definition" : "ALIAS: Decedent Middle Name.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_decedent_middle_name"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_middle_name.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_decedent_name_suffix",
        "short" : "ALIAS: SUFF Decedent Name Suffix",
        "definition" : "ALIAS: Decedent Name Suffix.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_decedent_name_suffix"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_decedent_name_suffix.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_father_surname",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_father_surname",
        "short" : "ALIAS: FLNAME Father Surname",
        "definition" : "ALIAS: Father Surname.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_father_surname.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_father_surname.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_father_surname"
      },
      {
        "id" : "Parameters.parameter:alias_father_surname.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_father_surname.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_father_surname.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number",
        "path" : "Parameters.parameter",
        "sliceName" : "alias_social_security_number",
        "short" : "ALIAS: SSN Social Security Number",
        "definition" : "ALIAS: Social Security Number.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number.extension",
        "path" : "Parameters.parameter.extension",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number.name",
        "path" : "Parameters.parameter.name",
        "patternString" : "alias_social_security_number"
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number.value[x]",
        "path" : "Parameters.parameter.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number.resource",
        "path" : "Parameters.parameter.resource",
        "max" : "0"
      },
      {
        "id" : "Parameters.parameter:alias_social_security_number.part",
        "path" : "Parameters.parameter.part",
        "max" : "0"
      }
    ]
  }
}

```
