# DeathRecordSubmissionHeaderExample1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeathRecordSubmissionHeaderExample1**

## Example MessageHeader: DeathRecordSubmissionHeaderExample1

Profile: [Submission Message Header](StructureDefinition-VRM-SubmissionHeader.md)

**event**: [http://nchs.cdc.gov/vrdr_submission](http://nchs.cdc.gov/vrdr_submission)

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

* [Parameters: cert_no, jurisdiction_id, state_auxiliary_id](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersDeathExample1)
* [Bundle: type = collection](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyDeathBundle)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "DeathRecordSubmissionHeaderExample1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
    ]
  },
  "eventUri" : "http://nchs.cdc.gov/vrdr_submission",
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
      "reference" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1"
    },
    {
      "reference" : "http://www.example.org/fhir/Bundle/DummyDeathBundle"
    }
  ]
}

```
