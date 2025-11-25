# BirthReportUpdateHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthReportUpdateHeader-Example1**

## Example MessageHeader: BirthReportUpdateHeader-Example1

Profile: [Message Update Header](StructureDefinition-VRM-UpdateHeader.md)

**event**: [http://nchs.cdc.gov/birth_submission_update](http://nchs.cdc.gov/birth_submission_update)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://nchs.cdc.gov/vitalrecords](https://nchs.cdc.gov/vitalrecords) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

**focus**: 

* [Bundle: type = collection](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyBundle)
* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersBirth-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "BirthReportUpdateHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/birth_submission_update",
  "destination" : [
    {
      "endpoint" : "https://nchs.cdc.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "https://sos.ny.gov/vitalrecords"
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Bundle/DummyBundle"
    },
    {
      "reference" : "http://www.example.org/fhir/Parameters/ParametersBirth-Example1"
    }
  ]
}

```
