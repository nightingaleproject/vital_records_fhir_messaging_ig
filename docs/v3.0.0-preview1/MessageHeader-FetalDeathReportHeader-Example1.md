# FetalDeathReportHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FetalDeathReportHeader-Example1**

## Example MessageHeader: FetalDeathReportHeader-Example1

Profile: [Submission Message Header](StructureDefinition-VRM-SubmissionHeader.md)

**event**: [http://nchs.cdc.gov/fd_submission](http://nchs.cdc.gov/fd_submission)

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
* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-CodedCauseOfFetalDeathMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersFD-Example2)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "FetalDeathReportHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/fd_submission",
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
      "reference" : "http://www.example.org/fhir/Parameters/ParametersFD-Example2"
    }
  ]
}

```
