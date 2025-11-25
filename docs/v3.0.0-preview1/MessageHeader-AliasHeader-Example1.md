# AliasHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AliasHeader-Example1**

## Example MessageHeader: AliasHeader-Example1

Profile: [Alias Header](StructureDefinition-VRM-AliasHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_alias](http://nchs.cdc.gov/vrdr_alias)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://nchs.cdc.gov/vrdr_submission](http://nchs.cdc.gov/vrdr_submission) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

**focus**: [Parameters (10 parameters)](Bundle-DeathRecordAliasMessage-Example1.md#http-//www.example.org/fhir/Parameters/AliasParameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "AliasHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AliasHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_alias",
  "destination" : [
    {
      "endpoint" : "http://nchs.cdc.gov/vrdr_submission"
    }
  ],
  "source" : {
    "endpoint" : "https://sos.ny.gov/vitalrecords"
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Parameters/AliasParameters-Example1"
    }
  ]
}

```
