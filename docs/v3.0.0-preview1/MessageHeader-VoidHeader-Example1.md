# VoidHeader-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VoidHeader-Example1**

## Example MessageHeader: VoidHeader-Example1

Profile: [Void Header](StructureDefinition-VRM-VoidHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_submission_void](http://nchs.cdc.gov/vrdr_submission_void)

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

**focus**: [Parameters: cert_no, block_count, jurisdiction_id, event_year, state_auxiliary_id](Bundle-VoidMessage-Example1.md#http-//www.example.org/fhir/Parameters/VoidParameters-Example1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "VoidHeader-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-VoidHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_submission_void",
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
      "reference" : "http://www.example.org/fhir/Parameters/VoidParameters-Example1"
    }
  ]
}

```
