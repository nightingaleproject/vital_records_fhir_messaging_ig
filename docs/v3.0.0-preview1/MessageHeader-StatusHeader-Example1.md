# StatusHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **StatusHeader-Example1**

## Example MessageHeader: StatusHeader-Example1

Profile: [Status Header](StructureDefinition-VRM-StatusHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_status](http://nchs.cdc.gov/vrdr_status)

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://nchs.cdc.gov/vrdr_status](http://nchs.cdc.gov/vrdr_status) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [https://sos.ny.gov/vitalrecords](https://sos.ny.gov/vitalrecords) |

### Responses

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | SubmissionHeader-Example1 | OK |

**focus**: [Parameters: cert_no, status, jurisdiction_id, event_year, state_auxiliary_id](Bundle-StatusMessage-Example1.md#http-//www.example.org/fhir/Parameters/StatusParameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "StatusHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-StatusHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_status",
  "destination" : [
    {
      "endpoint" : "http://nchs.cdc.gov/vrdr_status"
    }
  ],
  "source" : {
    "endpoint" : "https://sos.ny.gov/vitalrecords"
  },
  "response" : {
    "identifier" : "SubmissionHeader-Example1",
    "code" : "ok"
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Parameters/StatusParameters-Example1"
    }
  ]
}

```
