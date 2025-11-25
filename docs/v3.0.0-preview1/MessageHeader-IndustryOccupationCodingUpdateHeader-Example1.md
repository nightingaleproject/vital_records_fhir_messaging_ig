# IndustryOccupationCodingUpdateHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IndustryOccupationCodingUpdateHeader-Example1**

## Example MessageHeader: IndustryOccupationCodingUpdateHeader-Example1

Profile: [Industy Occupation Coding Update Header](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_industryoccupation_coding_update](http://nchs.cdc.gov/vrdr_industryoccupation_coding_update)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://nchs.cdc.gov/vrdr_submission](http://nchs.cdc.gov/vrdr_submission) |

### Responses

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | SubmissionHeader-Example1 | OK |

**focus**: 

* [Bundle: type = collection](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyBundle)
* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-AcknowledgementMessage-Example1.md#http-//www.example.org/fhir/Parameters/Parameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "IndustryOccupationCodingUpdateHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-IndustryOccupationCodingUpdateHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_industryoccupation_coding_update",
  "destination" : [
    {
      "endpoint" : "https://sos.ny.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "http://nchs.cdc.gov/vrdr_submission"
  },
  "response" : {
    "identifier" : "SubmissionHeader-Example1",
    "code" : "ok"
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Bundle/DummyBundle"
    },
    {
      "reference" : "http://www.example.org/fhir/Parameters/Parameters-Example1"
    }
  ]
}

```
