# Certificate Available Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Certificate Available Values**

## ValueSet: Certificate Available Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-CertAvailable-vs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:CertAvailableVS |

 
Certificate Available Values 

 **References** 

* [Birth Record Identifier Child](StructureDefinition-VRM-birth-record-identifier-child.md)
* [Fetal Death Record Identifier](StructureDefinition-VRM-fetal-death-record-identifier.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 4 concepts

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "VRM-CertAvailable-vs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-CertAvailable-vs",
  "version" : "3.0.0-Preview1",
  "name" : "CertAvailableVS",
  "title" : "Certificate Available Values",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Certificate Available Values",
  "compose" : {
    "include" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0136",
        "concept" : [
          {
            "code" : "Y",
            "display" : "Yes"
          },
          {
            "code" : "N",
            "display" : "No"
          }
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-NullFlavor",
        "concept" : [
          {
            "code" : "UNK",
            "display" : "Unknown"
          },
          {
            "code" : "NAV",
            "display" : "Temporarily unavailable"
          }
        ]
      }
    ]
  }
}

```
