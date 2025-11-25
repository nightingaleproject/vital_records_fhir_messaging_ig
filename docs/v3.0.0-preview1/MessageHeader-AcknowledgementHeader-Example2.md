# AcknowledgementHeader-Example2 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AcknowledgementHeader-Example2**

## Example MessageHeader: AcknowledgementHeader-Example2

Profile: [Acknowledgement Header](StructureDefinition-VRM-AcknowledgementHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_acknowledgement](http://nchs.cdc.gov/vrdr_acknowledgement)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://nchs.cdc.gov/vrdr_acknowledgement](http://nchs.cdc.gov/vrdr_acknowledgement) |

### Responses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Details** |
| * | SubmissionHeader-Example1 | OK | [OperationOutcome](Bundle-AcknowledgementMessage-Example2.md#http-//www.example.org/fhir/OperationOutcome/Outcome-Example2) |

**focus**: [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-AcknowledgementMessage-Example1.md#http-//www.example.org/fhir/Parameters/Parameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "AcknowledgementHeader-Example2",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-AcknowledgementHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_acknowledgement",
  "destination" : [
    {
      "endpoint" : "https://sos.ny.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "http://nchs.cdc.gov/vrdr_acknowledgement"
  },
  "response" : {
    "identifier" : "SubmissionHeader-Example1",
    "code" : "ok",
    "details" : {
      "reference" : "http://www.example.org/fhir/OperationOutcome/Outcome-Example2"
    }
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Parameters/Parameters-Example1"
    }
  ]
}

```
