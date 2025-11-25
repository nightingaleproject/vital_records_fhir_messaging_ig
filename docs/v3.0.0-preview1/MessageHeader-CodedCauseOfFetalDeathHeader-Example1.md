# CodedCauseOfFetalDeathHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodedCauseOfFetalDeathHeader-Example1**

## Example MessageHeader: CodedCauseOfFetalDeathHeader-Example1

Profile: [Cause of Death Coding Header](StructureDefinition-VRM-CauseOfDeathCodingHeader.md)

**event**: [http://nchs.cdc.gov/fd_causeofdeath_coding](http://nchs.cdc.gov/fd_causeofdeath_coding)

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

### Responses

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | FetalDeathReportHeader-Example1 | OK |

**focus**: 

* [Bundle: type = collection](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyBundle)
* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-CodedCauseOfFetalDeathMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersFD-Example2)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "CodedCauseOfFetalDeathHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-CauseOfDeathCodingHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/fd_causeofdeath_coding",
  "destination" : [
    {
      "endpoint" : "https://nchs.cdc.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "https://sos.ny.gov/vitalrecords"
  },
  "response" : {
    "identifier" : "FetalDeathReportHeader-Example1",
    "code" : "ok"
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
