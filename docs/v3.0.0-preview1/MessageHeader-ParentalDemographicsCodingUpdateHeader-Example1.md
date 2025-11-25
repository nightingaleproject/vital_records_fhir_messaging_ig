# ParentalDemographicsCodingUpdateHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ParentalDemographicsCodingUpdateHeader-Example1**

## Example MessageHeader: ParentalDemographicsCodingUpdateHeader-Example1

Profile: [Demographics Coding Update Header](StructureDefinition-VRM-DemographicsCodingUpdateHeader.md)

**event**: [http://nchs.cdc.gov/birth_demographics_coding_update](http://nchs.cdc.gov/birth_demographics_coding_update)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://nchs.cdc.gov/bfdr_submission](http://nchs.cdc.gov/bfdr_submission) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

### Responses

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | BirthReportHeader-Example1 | OK |

**focus**: 

* [Bundle: type = collection](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyBundle)
* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersBirth-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "ParentalDemographicsCodingUpdateHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DemographicsCodingUpdateHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/birth_demographics_coding_update",
  "destination" : [
    {
      "endpoint" : "http://nchs.cdc.gov/bfdr_submission"
    }
  ],
  "source" : {
    "endpoint" : "https://sos.ny.gov/vitalrecords"
  },
  "response" : {
    "identifier" : "BirthReportHeader-Example1",
    "code" : "ok"
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
