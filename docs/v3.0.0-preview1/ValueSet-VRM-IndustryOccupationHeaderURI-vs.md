# Industry and Occupation MessageHeader URI Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Industry and Occupation MessageHeader URI Values**

## ValueSet: Industry and Occupation MessageHeader URI Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-IndustryOccupationHeaderURI-vs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:IndustryOccupationURIVS |

 
Industry and Occupation MessageHeader URI Values 

 **References** 

* [Industry Occupation Coding Header](StructureDefinition-VRM-IndustryOccupationCodingHeader.md)

### Logical Definition (CLD)

 

### Expansion

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
  "id" : "VRM-IndustryOccupationHeaderURI-vs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/ValueSet/VRM-IndustryOccupationHeaderURI-vs",
  "version" : "3.0.0-Preview1",
  "name" : "IndustryOccupationURIVS",
  "title" : "Industry and Occupation MessageHeader URI Values",
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
  "description" : "Industry and Occupation MessageHeader URI Values",
  "compose" : {
    "include" : [
      {
        "system" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-MessageHeaderURI-cs",
        "concept" : [
          {
            "code" : "http://nchs.cdc.gov/vrdr_industryoccupation_coding"
          },
          {
            "code" : "http://nchs.cdc.gov/fd_industryoccupation_coding"
          },
          {
            "code" : "http://nchs.cdc.gov/birth_industryoccupation_coding"
          }
        ]
      }
    ]
  }
}

```
