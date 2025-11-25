# MaternalLinkageUpdateHeaderExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MaternalLinkageUpdateHeaderExample1**

## Example MessageHeader: MaternalLinkageUpdateHeaderExample1

Profile: [Message Update Header](StructureDefinition-VRM-UpdateHeader.md)

**event**: [http://nchs.cdc.gov/maternal_linkage_update](http://nchs.cdc.gov/maternal_linkage_update)

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

**focus**: 

* [Parameters: cert_no, jurisdiction_id, state_auxiliary_id](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersDeathExample1)
* [Bundle: identifier = placeholder; type = collection](Bundle-MaternalLinkageSubmissionMessage-Example1.md#http-//www.example.org/fhir/Bundle/MaternalLinkageBundle-Birth)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "MaternalLinkageUpdateHeaderExample1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/maternal_linkage_update",
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
      "reference" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1"
    },
    {
      "reference" : "http://www.example.org/fhir/Bundle/MaternalLinkageBundle-Birth"
    }
  ]
}

```
