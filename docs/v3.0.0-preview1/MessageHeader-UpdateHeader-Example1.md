# UpdateHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **UpdateHeader-Example1**

## Example MessageHeader: UpdateHeader-Example1

Profile: [Message Update Header](StructureDefinition-VRM-UpdateHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_submission_update](http://nchs.cdc.gov/vrdr_submission_update)

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

* [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-AcknowledgementMessage-Example1.md#http-//www.example.org/fhir/Parameters/Parameters-Example1)
* [Bundle: type = collection](Bundle-BirthReportMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyBundle)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "UpdateHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-UpdateHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_submission_update",
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
      "reference" : "http://www.example.org/fhir/Parameters/Parameters-Example1"
    },
    {
      "reference" : "http://www.example.org/fhir/Bundle/DummyBundle"
    }
  ]
}

```
