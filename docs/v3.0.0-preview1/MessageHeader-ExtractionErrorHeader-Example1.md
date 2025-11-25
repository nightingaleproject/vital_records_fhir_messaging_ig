# ExtractionErrorHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExtractionErrorHeader-Example1**

## Example MessageHeader: ExtractionErrorHeader-Example1

Profile: [Extraction Error Header](StructureDefinition-VRM-ExtractionErrorHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_extraction_error](http://nchs.cdc.gov/vrdr_extraction_error)

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

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Identifier** | **Code** | **Details** |
| * | 54a07cef-4bff-4bb0-8957-9c8fbf7390ed | Fatal Error | [OperationOutcome](Bundle-ExtractionErrorMessage-Example1.md#http-//www.example.org/fhir/OperationOutcome/Outcome-Example1) |

**focus**: [Parameters: cert_no, jurisdiction_id, event_year, state_auxiliary_id, payload_version_id](Bundle-AcknowledgementMessage-Example1.md#http-//www.example.org/fhir/Parameters/Parameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "ExtractionErrorHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-ExtractionErrorHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_extraction_error",
  "destination" : [
    {
      "endpoint" : "https://sos.ny.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "http://nchs.cdc.gov/vrdr_submission"
  },
  "response" : {
    "identifier" : "54a07cef-4bff-4bb0-8957-9c8fbf7390ed",
    "code" : "fatal-error",
    "details" : {
      "reference" : "http://www.example.org/fhir/OperationOutcome/Outcome-Example1"
    }
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Parameters/Parameters-Example1"
    }
  ]
}

```
