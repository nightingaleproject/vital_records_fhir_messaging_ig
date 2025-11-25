# MessageHeader URI Values - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MessageHeader URI Values**

## CodeSystem: MessageHeader URI Values 

| | |
| :--- | :--- |
| *Official URL*:http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-MessageHeaderURI-cs | *Version*:3.0.0-Preview1 |
| Draft as of 2025-11-25 | *Computable Name*:MessageHeaderURICS |

 
MessageHeader URI Values 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AcknowledgementURIVS](ValueSet-VRM-AcknowledgementHeaderURI-vs.md)
* [CauseOfDeathCodingURIVS](ValueSet-VRM-CauseOfDeathCodingHeaderURI-vs.md)
* [CauseOfDeathCodingUpdateURIVS](ValueSet-VRM-CauseOfDeathCodingUpdateHeaderURI-vs.md)
* [DemographicsCodingHeaderURIVS](ValueSet-VRM-DemographicsCodingHeaderURI-vs.md)
* [DemographicsCodingUpdateHeaderURIVS](ValueSet-VRM-DemographicsCodingUpdateHeaderURI-vs.md)
* [ExtractionErrorHeaderURIVS](ValueSet-VRM-ExtractionErrorHeaderURI-vs.md)
* [IndustryOccupationURIVS](ValueSet-VRM-IndustryOccupationHeaderURI-vs.md)
* [IndustryOccupationUpdateURIVS](ValueSet-VRM-IndustryOccupationUpdateHeaderURI-vs.md)
* [RequestURIVS](ValueSet-VRM-RequestHeaderURI-vs.md)
* [StatusURIVS](ValueSet-VRM-StatusHeaderURI-vs.md)
* [SubmissionURIVS](ValueSet-VRM-SubmissionHeaderURI-vs.md)
* [UpdateURIVS](ValueSet-VRM-UpdateHeaderURI-vs.md)
* [VoidURIVS](ValueSet-VRM-VOIDHeaderURI-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "VRM-MessageHeaderURI-cs",
  "url" : "http://cdc.gov/nchs/nvss/fhir/vital-records-messaging/CodeSystem/VRM-MessageHeaderURI-cs",
  "version" : "3.0.0-Preview1",
  "name" : "MessageHeaderURICS",
  "title" : "MessageHeader URI Values",
  "status" : "draft",
  "experimental" : false,
  "date" : "2025-11-25T14:04:25-05:00",
  "publisher" : "CDC NCHS",
  "contact" : [
    {
      "name" : "CDC NCHS",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://cdc.gov/nchs"
        }
      ]
    }
  ],
  "description" : "MessageHeader URI Values",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 38,
  "concept" : [
    {
      "code" : "http://nchs.cdc.gov/vrdr_alias",
      "display" : "VRDR Alias",
      "definition" : "Indicates that this is an alias for a previously submitted death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_acknowledgement",
      "display" : "VRDR Acknowledgement",
      "definition" : "Indicates this is  an  acknowledgement of a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_acknowledgement",
      "display" : "Fetal Acknowledgement",
      "definition" : "Indicates this is an  acknowledgement for a Fetal Death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_acknowledgement",
      "display" : "Birth Acknowledgement",
      "definition" : "Indicates this is  an  acknowledgement for a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_submission",
      "display" : "VRDR Submission",
      "definition" : "Indicates that the payload is an initial (or retransmission of an unacknowledged) submission of a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_submission_update",
      "display" : "VRDR Update",
      "definition" : "Indicates this is  an  update  to  a  previously  acknowledged  submission  of  a  death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_submission",
      "display" : "Birth Submission",
      "definition" : "Indicates that this is an initial submission of a BFDR birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_submission_update",
      "display" : "Birth Update",
      "definition" : "Indicates that this is an updated submission of a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_submission",
      "display" : "Fetal Death Submission",
      "definition" : "Indicates that the payload is an initial submission of a  fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_submission_update",
      "display" : "Fetal Death Update",
      "definition" : "Indicates that the payload is an updated submission of a  fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_submission_void",
      "display" : "VRDR Void",
      "definition" : "Indicates this is  void  of  a  death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_submission_void",
      "display" : "Fetal Death Submission Void",
      "definition" : "Indicates this is  void  of  a  fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_submission_void",
      "display" : "Birth Submission Void",
      "definition" : "Indicates that this is void of a submitted  birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_demographics_coding",
      "display" : "VRDR Demographics Coding",
      "definition" : "Indicates that this is an initial demographics coding of a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_demographics_coding_update",
      "display" : "VRDR Demographics Coding Update",
      "definition" : "Indicates that this is an updated demographics coding of a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_demographics_coding",
      "display" : "Birth Parental Demographics Coding",
      "definition" : "Indicates that this is an initial demographics coding of a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_demographics_coding_update",
      "display" : "Birth Parental Demographics Coding Update",
      "definition" : "Indicates that this is an updated demographics coding of a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_demographics_coding",
      "display" : "Fetal Death Parental Demographics Coding",
      "definition" : "Indicates that this is an initial demographics coding of a fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_demographics_coding_update",
      "display" : "Fetal Death Parental Demographics Coding Update",
      "definition" : "Indicates that this is an updated demographics coding of a fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_causeofdeath_coding",
      "display" : "VRDR Cause of Death Coding",
      "definition" : "Indicates that this is an initial cause of death coding of a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_causeofdeath_coding_update",
      "display" : "VRDR Cause of Death Coding Update",
      "definition" : "Indicates that this is an updated cause of death coding"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_causeofdeath_coding",
      "display" : "Cause of Fetal Death Submission",
      "definition" : "Indicates that this is an initial fetal cause of death"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_causeofdeath_coding_update",
      "display" : "Cause of Fetal Death Update",
      "definition" : "Indicates that this is an updated fetal cause of death"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_industryoccupation_coding",
      "display" : "VRDR Industry Occupation Coding",
      "definition" : "Indicates that this is an initial industry occupation coding"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_industryoccupation_coding_update",
      "display" : "VRDR Industry Occupation Coding Update",
      "definition" : "Indicates that this is an updated industry occupation coding"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_industryoccupation_coding",
      "display" : "Fetal Death Industry Occupation Coding",
      "definition" : "Indicates that this is an initial industry occupation coding of the mother on a fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_industryoccupation_coding_update",
      "display" : "Fetal Death Industry Occupation Coding Update",
      "definition" : "Indicates that this is an updated industry occupation coding of the mother on a fetal death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_industryoccupation_coding",
      "display" : "Birth Industry Occupation Coding",
      "definition" : "Indicates that this is an initial industry occupation coding of the mother on a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_industryoccupation_coding_update",
      "display" : "Birth  Industry Occupation Coding Update",
      "definition" : "Indicates that this is an updated industry occupation coding of the mother on a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_extraction_error",
      "display" : "VRDR Extraction Error",
      "definition" : "Indicates that this is an extraction error on a death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_extraction_error",
      "display" : "Fetal Death Extraction Error",
      "definition" : "Indicates that this is an extraction error for a Fetal Death report"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_extraction_error",
      "display" : "Birth Extraction Error",
      "definition" : "Indicates that this is an extraction error for a birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/vrdr_status",
      "display" : "VRDR Status",
      "definition" : "Indicates that this is a status for a previously submitted death report"
    },
    {
      "code" : "http://nchs.cdc.gov/fd_status",
      "display" : "Fetal Death Status",
      "definition" : "Indicates that this is a status for a previously submitted Fetal Death Record"
    },
    {
      "code" : "http://nchs.cdc.gov/birth_status",
      "display" : "Birth Status",
      "definition" : "Indicates that this is a status for a previously submitted birth report"
    },
    {
      "code" : "http://nchs.cdc.gov/maternal_linkage_request",
      "display" : "Maternal Linkage Request",
      "definition" : "NCHS requests that a jurisdiction submit maternal linkage data"
    },
    {
      "code" : "http://nchs.cdc.gov/maternal_linkage_submission",
      "display" : "Maternal Linkage Submission",
      "definition" : "Indicates that the payload is an initial submission of a maternal linkage"
    },
    {
      "code" : "http://nchs.cdc.gov/maternal_linkage_update",
      "display" : "Maternal Linkage Update",
      "definition" : "Jurisdiction updating previously submitted maternal linkage"
    }
  ]
}

```
