# Messages - Vital Records FHIR Messaging (VRFM) IG v3.0.0-Preview1

* [**Table of Contents**](toc.md)
* **Messages**

## Messages

### Message Exchange Patterns

The following subsections illustrate message exchange patterns between vital records jurisdictions and NVSS. The structure and content of the messages exchanged is described in Section 2.2. Note that the interactions illustrate patterns of message exchange between jurisdiction and NCHS FHIR Messaging Infrastructure as as described in the [high level architecture](index.md#high-level-architecture-of-a-fhir-messaging-based-nvss). The illustrations below are specific examples regarding the death record, but they also apply to the birth or fetal death record. Interactions between jurisdiction FHIR Messaging Infrastructure and other jurisdiction systems, or between NCHS FHIR Messaging Infrastructure and other NCHS systems, are not shown.

#### Successful Death Record Submission

Figure 1: Message exchange pattern for successful death record submission
 

Figure 1 illustrates the normal sequence of message exchanges between a vital records jurisdiction and NVSS. The extract step ensures that the submitted death record is in a format suitable for processing by validating the presence of required fields, and valid combinations of values for certain fields. The code step includes in-depth validation and coding of the death record. Records are submitted using a [DeathRecordSubmissionMessage](StructureDefinition-VRM-DeathRecordSubmissionMessage.md) and acknowledged using a [AcknowledgementMessage](StructureDefinition-VRM-AcknowledgementMessage.md). The [AcknowledgementMessage](StructureDefinition-VRM-AcknowledgementMessage.md) can optionally include warnings relating to message content. Coding responses are sent using a [CauseOfDeathCodingMessage](StructureDefinition-VRM-CauseOfDeathCodingMessage.md) or [DemographicsCodingMessage](StructureDefinition-VRM-DemographicsCodingMessage.md) and acknowledged using a [AcknowledgementMessage](StructureDefinition-VRM-AcknowledgementMessage.md).

The time between the Death Record Submission and Acknowledgement is expected to be relatively short (see additional discussion in [Retrying Requests](#retries)), the time until the Coding Response is sent could be significant if manual intervention is required. In the event that manual coding is required, and the coding response would be delayed, a [StatusMessage](StructureDefinition-VRM-StatusMessage.md) message may be sent. Note that acknowledgements are not expected for StatusMessages.

The second (optional) Code, Coding Update, Extract and Acknowledgement steps highlight that cause of death coding may be undertaken separately to race and ethnicity encoding. A single Death Record Submission message could result in both a Coding Response and a Coding Update message, one for cause of death, the other for race and ethnicity coding. The first coding for a given record should be sent using a Coding Response message, subsequent codings for the same record should be sent using a [DemographicsCodingUpdateMessage](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md) or [CauseOfDeathCodingUpdateMessage](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md). For brevity, this separation of coding for causes of death and race and ethnicity is omitted from subsequent diagrams but should be considered to be possible in all cases.

The purpose of acknowledgement messages is to support reliability in the exchange of death records and coding responses, see [Retrying Requests](#retries) for further details. Acknowledgements are a feature of the FHIR messaging system, they are not intended to be exposed to jurisdiction death registration systems or NVSS directly.

The Acknowledgement Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being acknowledged. When processing acknowledgements this identifier must be used to associate the acknowledgement with the message that is being acknowledged. This association is the basis for implementing reliable messaging.

A submission can be routed to NCHS and/or jurisdiction exchange via STEVE using the destinations specified in the [SubmissionHeader](StructureDefinition-VRM-SubmissionHeader.md). The destinations can include just NHCS, just jurisdiction exchange via STEVE, or both. This provides the functionality that was previously provided by the IJE REPLACE field as follows:

* Original Record (REPLACE = 0): message destination should include both `http://nchs.cdc.gov/vrdr_submission` and `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission`
* Updated Record(REPLACE = 1): message destination should include both `http://nchs.cdc.gov/vrdr_submission` and `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission_update`
* Do not send to NCHS (REPLACE = 2): message destination should include just `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission_update`

See the [Mortality Specific](message.md#mortality-specific) section below for details on message content.

#### Updating Prior Death Record Submission

Figure 2: Message exchange pattern for updating a prior death record submission
 

Figure 2 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when an initial submission needs to be subsequently updated. The initial submission of a new record should use a [DeathRecordSubmissionMessage](StructureDefinition-VRM-DeathRecordSubmissionMessage.md), subsequent updates should use a [DeathRecordUpdateMessage](StructureDefinition-VRM-DeathRecordUpdateMessage.md).

As shown in Figure 2, depending on timing (whether coding was complete prior to submission of the Death Record Update), the initial submission may result in a Coding Response or not. If a Coding Response is sent prior to the Death Record Update then a Coding Update will be sent following the Death Record Update.

See note in previous section regarding routing to NCHS and Jurisdictions.

#### Updating Prior Coding Response

Figure 3: Message exchange pattern for updating a prior coding response
 

Figure 3 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when a prior Coding Response needs to be subsequently updated. Coding updates should use a [DemographicsCodingUpdateMessage](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md) or [CauseOfDeathCodingUpdateMessage](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md).

#### Voiding Death Records

Figure 4: Message exchange pattern for voiding a prior death record submission
 

Figure 4 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when an initial submission needs to be subsequently voided. Depending on timing, the initial submission may result in a Coding Response or not.

Records can also be pre-voided to inform NCHS that a specific set of certificate numbers will not be used in the future. This would just require the final three steps of figure 5: "Death Record Void", "Extract" and "Acknowledgement". Voiding death records should use a [VoidMessage](StructureDefinition-VRM-VoidMessage.md).

See note in previous section about Submission of death records regarding routing to NCHS and Jurisdictions.

#### Retrying Requests

Figure 5: Message exchange pattern for retrying an unacknowledged death record submission
 

Figure 5 illustrates the case where the vital records jurisdiction does not receive a timely Acknowledgement to the Death Record Submission. Submissions can be retried providing the restrictions on Message and Header ids described in Section 2.2 are followed.

It is recommended that the API server and each client attempt a maximum of 3 retries, waiting 4 hours after the first attempt, 8 hours after the second attempt, and 12 hours after the third attempt. If no acknowledgment is received within 12 hours of the third attempt, communication through another channel (e.g., phone or e-mail) should be used to identify and resolve the problem. This approach prevents retries from overloading NVSS in the case of transient outages.

Figure 6: Message exchange pattern for retrying an unacknowledged coding response
 

Figure 6 illustrates the case where the vital records jurisdiction does not receive a Coding Response. NVSS will not receive the expected Acknowledgement and this will trigger resending of the Coding Response.

Figure 7: Message exchange pattern for retrying an unacknowledged coding response
 

Figure 7 illustrates the case where the Acknowledgement of a Coding Update message is not received by NVSS. NVSS resends the Coding Update message, the jurisdiction resends the Acknowledgement and ignores the duplicate message.

##### Acknowledgement Timeout Considerations

The appropriate time to wait for an acknowledgement depends on several factors including the underlying mechanism for message exchange. E.g. an implementation based on polling for messages would have to factor in the interval between polls since that sets a lower bound on the time to wait for acknowledgements.

#### Message Extraction Failures

Figure 8: Message exchange patterns for failed message extractions
 

Figure 8 illustrates two message extraction failures:

1. A Death Record Submission could not be extracted from the message and an Extraction Error Response is created instead of an Acknowledgement. Note that the return of warnings is supported by the[AcknowledgementMessage](StructureDefinition-VRM-AcknowledgementMessage.md).
1. A Coding Response could not be extracted from the message and an Extraction Error Response is returned instead of an acknowledgement.**Note**: The NCHS API currently does not currently accept[ExtractionErrorMessage](StructureDefinition-VRM-ExtractionErrorMessage.md). In the event that a jurisdiction can't extract content from an NCHS-generated message, the jurisdiction should contact NCHS using out of band channels (e.g., e-mail).

Extraction Error Response should use a [ExtractionErrorMessage](StructureDefinition-VRM-ExtractionErrorMessage.md). For submissions to NCHS, the set of current error messages are listed and described [here](business_rules_death.md).

For a given Record Submission or Coding Response:

* Extraction Error Response and Acknowledgment are mutually exclusive
* An acknowledged Submission or Coding Response can still result in issues later in the process that might require manual intervention

In either scenario, the recipient of the Extraction Error Response would need to investigate the cause of the failure using the information provided in the Extraction Error Response message.

#### Alias Messages for Death Records

Figure 9: Message exchange patterns for submission of alias message
 

Alias records are optional records that are submitted only for National Death Index purposes and contain alternate spellings or “AKA”s captured on some death certificates. Some Alias records are literally just a mixed case or upper-case version of the original record with no real significant differences. States vary in whether they even can report Aliases or not, and many never do. Alias records are accumulated and cannot be voided or deleted separate from their associated death record.

Figure 9 illustrates the submission of a death message followed by an alias message.

Alias messages can contain aliases for one or more of the following fields:

* Decedent’s First Name
* Decedent’s Middle Initial
* Decedent’s Last Name
* Decedent’s Name Suffix
* Father’s Surname
* Social Security Number

Alias records should be sent using a [DeathRecordAliasMessage](StructureDefinition-VRM-DeathRecordAliasMessage.md).

#### Messages for Birth Records

The message flow for Birth Records is very similar to the flow for Death Records. A jurisdiction submits a [BirthReportMessage](StructureDefinition-VRM-BirthReportMessage.md), and subsequently NCHS sends coded content that can include [IndustryOccupationCodingMessage](StructureDefinition-VRM-IndustryOccupationCodingMessage.md), and [DemographicsCodingMessage](StructureDefinition-VRM-DemographicsCodingMessage.md). Update versions of these messages are also available. Exceptions can be handled with [ExtractionErrorMessage](StructureDefinition-VRM-ExtractionErrorMessage.md) and [StatusMessage](StructureDefinition-VRM-StatusMessage.md).

#### Messages for Fetal Death Records

The message flow for Fetal Death Records is very similar to the flow for Death Records. A jurisdiction submits a [FetalDeathReportMessage](StructureDefinition-VRM-FetalDeathReportMessage.md), and subsequently NCHS sends coded content that can include [CodedCauseOfFetalDeathMessage](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md), [IndustryOccupationCodingMessage](StructureDefinition-VRM-IndustryOccupationCodingMessage.md), and [DemographicsCodingMessage](StructureDefinition-VRM-DemographicsCodingMessage.md). Update versions of these messages are also available. Exceptions can be handled with [ExtractionErrorMessage](StructureDefinition-VRM-ExtractionErrorMessage.md) and [StatusMessage](StructureDefinition-VRM-StatusMessage.md).

### Message Structure and Content

Most messages are used for multiple use cases. The Event URI used for each use case is different. See the documentation in the header associated with each message for details on the event URI.

#### Messages Used in Multiple Use Cases

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| [VoidMessage](StructureDefinition-VRM-VoidMessage.md) | In | [VoidHeader](StructureDefinition-VRM-VoidHeader.md) | [VoidParameters](StructureDefinition-VRM-VoidParameters.md) | - |   |
| [StatusMessage](StructureDefinition-VRM-StatusMessage.md) | Out | [StatusHeader](StructureDefinition-VRM-StatusHeader.md) | [StatusParameters](StructureDefinition-VRM-StatusParameters.md) | - |   |
| [AcknowledgementMessage](StructureDefinition-VRM-AcknowledgementMessage.md) | In/Out | [AcknowledgementHeader](StructureDefinition-VRM-AcknowledgementHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | [Outcome](StructureDefinition-VRM-Outcome.md)(optional) | Outcome used for warnings |
| [ExtractionErrorMessage](StructureDefinition-VRM-ExtractionErrorMessage.md) | Out | [ExtractionErrorHeader](StructureDefinition-VRM-ExtractionErrorHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md)(optional) | [Outcome](StructureDefinition-VRM-Outcome.md) |   |
| [CauseOfDeathCodingMessage](StructureDefinition-VRM-CauseOfDeathCodingMessage.md) | Out | [CauseOfDeathCodingHeader](StructureDefinition-VRM-CauseOfDeathCodingHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | CauseOfDeathCodedContentBundle | Death and Fetal Death only |
| [CauseOfDeathCodingUpdateMessage](StructureDefinition-VRM-CauseOfDeathCodingUpdateMessage.md) | Out | [CauseOfDeathCodingUpdateHeader](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | CauseOfDeathCodedContentBundle | Death and Fetal Death only |
| [DemographicsCodingMessage](StructureDefinition-VRM-DemographicsCodingMessage.md) | Out | [DemographicsCodingHeader](StructureDefinition-VRM-DemographicsCodingHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | DemographicCodedContentBundle |   |
| [DemographicsCodingUpdateMessage](StructureDefinition-VRM-DemographicsCodingUpdateMessage.md) | Out | [DemographicsCodingUpdateHeader](StructureDefinition-VRM-DemographicsCodingUpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | DemographicCodedContentBundle |   |
| [IndustryOccupationCodingMessage](StructureDefinition-VRM-IndustryOccupationCodingMessage.md) | Out | [IndustryOccupationCodingHeader](StructureDefinition-VRM-IndustryOccupationCodingHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | IndustryOccupationCodedContentBundle | Not supported in VRDR STU2.2 |
| [IndustryOccupationCodingUpdateMessage](StructureDefinition-VRM-IndustryOccupationCodingUpdateMessage.md) | Out | [IndustryOccupationCodingUpdateHeader](StructureDefinition-VRM-IndustryOccupationCodingUpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | IndustryOccupationCodedContentBundle | Not supported in VRDR STU2.2 |

#### Mortality Specific

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [DeathRecordSubmissionMessage](StructureDefinition-VRM-DeathRecordSubmissionMessage.md) | In | [SubmissionHeader](StructureDefinition-VRM-SubmissionHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | DeathCertificateDocument |
| [DeathRecordUpdateMessage](StructureDefinition-VRM-DeathRecordUpdateMessage.md) | In | [UpdateHeader](StructureDefinition-VRM-UpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | DeathCertificateDocument |
| [DeathRecordAliasMessage](StructureDefinition-VRM-DeathRecordAliasMessage.md) | In | [AliasHeader](StructureDefinition-VRM-AliasHeader.md) | [AliasParameters](StructureDefinition-VRM-AliasParameters.md) | - |

#### Mortality Maternal Linkage Specific (New)

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [MaternalLinkageSubmissionMessage](StructureDefinition-VRM-MaternalLinkageSubmissionMessage.md) | In | [SubmissionHeader](StructureDefinition-VRM-SubmissionHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | [MaternalLinkageContentBundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md) |
| [MaternalLinkageUpdateMessage](StructureDefinition-VRM-MaternalLinkageUpdateMessage.md) | In | [UpdateHeader](StructureDefinition-VRM-UpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | [MaternalLinkageContentBundle](StructureDefinition-VRM-maternal-linkage-content-bundle.md) |
| [MaternalLinkageRequestMessage](StructureDefinition-VRM-MaternalLinkageRequestMessage.md) | Out | [MaternalLinkageRequestHeader](StructureDefinition-VRM-MaternalLinkageRequestHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | - |

#### Birth Specific

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [BirthReportMessage](StructureDefinition-VRM-BirthReportMessage.md) | In | [SubmissionHeader](StructureDefinition-VRM-SubmissionHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentBFDR |
| [BirthReportUpdateMessage](StructureDefinition-VRM-BirthReportUpdateMessage.md) | In | [UpdateHeader](StructureDefinition-VRM-UpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentBFDR |

#### Fetal Death Specific

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| [FetalDeathReportMessage](StructureDefinition-VRM-FetalDeathReportMessage.md) | In | [SubmissionHeader](StructureDefinition-VRM-SubmissionHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentBFDR |
| [FetalDeathReportUpdateMessage](StructureDefinition-VRM-FetalDeathReportUpdateMessage.md) | In | [UpdateHeader](StructureDefinition-VRM-UpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentBFDR |
| [CodedCauseOfFetalDeathMessage](StructureDefinition-VRM-CodedCauseOfFetalDeathMessage.md) | Out | [CauseOfDeathCodingHeader](StructureDefinition-VRM-CauseOfDeathCodingHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentCodedCauseOfFetalDeath |
| [CodedCauseOfFetalDeathUpdateMessage](StructureDefinition-VRM-CodedCauseOfFetalDeathUpdateMessage.md) | Out | [CauseOfDeathCodingUpdateHeader](StructureDefinition-VRM-CauseOfDeathCodingUpdateHeader.md) | [MessageParameters](StructureDefinition-VRM-MessageParameters.md) | BundleDocumentCodedCauseOfFetalDeathUpdate |

