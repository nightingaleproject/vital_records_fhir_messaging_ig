# DeathRecordSubmissionMessage-Example1 - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **DeathRecordSubmissionMessage-Example1**

## Example Bundle: DeathRecordSubmissionMessage-Example1

Profile: [Death Record Submission Message](StructureDefinition-VRM-DeathRecordSubmissionMessage.md)

Bundle DeathRecordSubmissionMessage-Example1 of type message

-------

Entry 1 - fullUrl = http://www.example.org/fhir/Header/DeathRecordSubmissionHeaderExample1

Resource MessageHeader:

> 

Profile: [Submission Message Header](StructureDefinition-VRM-SubmissionHeader.md)

**event**:`http://nchs.cdc.gov/vrdr_submission`
> **destination**

> **source**
**focus**:
* [Parameters: cert_no, jurisdiction_id, state_auxiliary_id](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Parameters/ParametersDeathExample1)
* [Bundle: type = collection](Bundle-DeathRecordSubmissionMessage-Example1.md#http-//www.example.org/fhir/Bundle/DummyDeathBundle)

-------

Entry 2 - fullUrl = http://www.example.org/fhir/Parameters/ParametersDeathExample1

Resource Parameters:

> 

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters


-------

Entry 3 - fullUrl = http://www.example.org/fhir/Bundle/DummyDeathBundle

Resource Bundle:

> 

Profile: [Placeholder Profile for profile-based slicing](StructureDefinition-VRM-MessageBundle.md)

Bundle DummyDeathBundle of type collection
-------
Entry 1 - fullUrl = http://www.example.org/fhir/Parameters/ParametersDeathExample1Resource Parameters:
> 

Profile: [Message Parameters](StructureDefinition-VRM-MessageParameters.md)

## Parameters





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "DeathRecordSubmissionMessage-Example1",
  "meta" : {
    "profile" : [
      "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-DeathRecordSubmissionMessage"
    ]
  },
  "type" : "message",
  "timestamp" : "2021-05-20T00:00:00Z",
  "entry" : [
    {
      "fullUrl" : "http://www.example.org/fhir/Header/DeathRecordSubmissionHeaderExample1",
      "resource" : {
        "resourceType" : "MessageHeader",
        "id" : "DeathRecordSubmissionHeaderExample1",
        "meta" : {
          "profile" : [
            "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-SubmissionHeader"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MessageHeader_DeathRecordSubmissionHeaderExample1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MessageHeader DeathRecordSubmissionHeaderExample1</b></p><a name=\"DeathRecordSubmissionHeaderExample1\"> </a><a name=\"hcDeathRecordSubmissionHeaderExample1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-VRM-SubmissionHeader.html\">Submission Message Header</a></p></div><p><b>event</b>: <a href=\"http://nchs.cdc.gov/vrdr_submission\">http://nchs.cdc.gov/vrdr_submission</a></p><h3>Destinations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://nchs.cdc.gov/vrdr_submission\">http://nchs.cdc.gov/vrdr_submission</a></td></tr></table><h3>Sources</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Endpoint</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"https://sos.ny.gov/vitalrecords\">https://sos.ny.gov/vitalrecords</a></td></tr></table><p><b>focus</b>: </p><ul><li><a href=\"Bundle-DeathRecordSubmissionMessage-Example1.html#http-//www.example.org/fhir/Parameters/ParametersDeathExample1\">Parameters: cert_no, jurisdiction_id, state_auxiliary_id</a></li><li><a href=\"Bundle-DeathRecordSubmissionMessage-Example1.html#http-//www.example.org/fhir/Bundle/DummyDeathBundle\">Bundle: type = collection</a></li></ul></div>"
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
    },
    {
      "fullUrl" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1",
      "resource" : {
        "resourceType" : "Parameters",
        "id" : "ParametersDeathExample1",
        "meta" : {
          "profile" : [
            "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
          ]
        },
        "parameter" : [
          {
            "name" : "cert_no",
            "valueUnsignedInt" : 111111
          },
          {
            "name" : "jurisdiction_id",
            "valueString" : "NY"
          },
          {
            "name" : "state_auxiliary_id",
            "valueString" : "abcdef10"
          }
        ]
      }
    },
    {
      "fullUrl" : "http://www.example.org/fhir/Bundle/DummyDeathBundle",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "DummyDeathBundle",
        "meta" : {
          "profile" : [
            "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageBundle"
          ]
        },
        "type" : "collection",
        "entry" : [
          {
            "fullUrl" : "http://www.example.org/fhir/Parameters/ParametersDeathExample1",
            "resource" : {
              "resourceType" : "Parameters",
              "id" : "ParametersDeathExample1",
              "meta" : {
                "profile" : [
                  "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/StructureDefinition/VRM-MessageParameters"
                ]
              },
              "parameter" : [
                {
                  "name" : "cert_no",
                  "valueUnsignedInt" : 111111
                },
                {
                  "name" : "jurisdiction_id",
                  "valueString" : "NY"
                },
                {
                  "name" : "state_auxiliary_id",
                  "valueString" : "abcdef10"
                }
              ]
            }
          }
        ]
      }
    }
  ]
}

```
