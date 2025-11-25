# MaternalLinkageRequestHeaderExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MaternalLinkageRequestHeaderExample1**

## Example MessageHeader: MaternalLinkageRequestHeaderExample1

Profile: [Maternal Linkage Request Message Header](StructureDefinition-VRM-MaternalLinkageRequestHeader.md)

**event**: [http://nchs.cdc.gov/maternal_linkage_request](http://nchs.cdc.gov/maternal_linkage_request)

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

**focus**: [Parameters: cert_no, jurisdiction_id, state_auxiliary_id](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersDeathExample1)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "MaternalLinkageRequestHeaderExample1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MaternalLinkageRequestHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/maternal_linkage_request",
  "destination" : [
    {
      "endpoint" : "https://sos.ny.gov/vitalrecords"
    }
  ],
  "source" : {
    "endpoint" : "http://nchs.cdc.gov/vrdr_submission"
  },
  "focus" : [
    {
      "reference" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1"
    }
  ]
}

```
