### Message Exchange Patterns

The following subsections illustrate message exchange patterns between vital records jurisdictions and NVSS. The structure and content of the messages exchanged is described in section 5. Note that the interactions illustrate patterns of message exchange between jurisdiction and NCHS FHIR Messaging Infrastructure as as described in the [high level architecture](index.html#high-level-architecture-of-a-fhir-messaging-based-nvss). Interactions between jurisdiction FHIR Messaging Infrastructure and other jurisdiction systems, or between NCHS FHIR Messaging Infrastructure and other NCHS systems, are not shown.

#### Successful Death Record Submission

<figure style="align:middle">
    <img alt = "Message exchange pattern for successful death record submission" style="width:25%;height:auto;float:none;align:middle;" src="submission.png"/>
    <figcaption style="bold">Figure 1: Message exchange pattern for successful death record submission</figcaption>
</figure>
<!-- ![Message exchange pattern for successful death record submission](submission.png){ width=25% } -->
&nbsp;

Figure 1 illustrates the normal sequence of message exchanges between a vital records jurisdiction and NVSS. The extract step ensures that the submitted death record is in a format suitable for processing by validating the presence of required fields, and valid combinations of values for certain fields. The code step includes in-depth validation and coding of the death record.  Records are submitted using a [DeathRecordSubmissionMessage] and acknowledged using a [AcknowledgementMessage]. The [AcknowledgementMessage] can optionally include warnings relating to message content.
Coding responses are sent using a [CauseOfDeathCodingMessage] or [DemographicsCodingMessage] and acknowledged using a [AcknowledgementMessage].

The time between the Death Record Submission and Acknowledgement is expected to be relatively short (see additional discussion in [Retrying Requests](#retries)), the time until the Coding Response is sent could be significant if manual intervention is required.  In the event that manual coding is required, and the coding response would be delayed, a [StatusMessage] message may be sent.  Note that acknowledgements are not expected for StatusMessages.

The second (optional) Code, Coding Update, Extract and Acknowledgement steps highlight that cause of death coding may be undertaken separately to race and ethnicity encoding. A single Death Record Submission message could result in both a  Coding Response and a Coding Update message, one for cause of death, the other for race and ethnicity coding. The first coding for a given record should be sent using a Coding Response message, subsequent codings for the same record should be sent using a [DemographicsCodingUpdateMessage] or [CauseOfDeathCodingUpdateMessage]. For brevity, this separation of coding for causes of death and race and ethnicity is omitted from subsequent diagrams but should be considered to be possible in all cases.

The purpose of acknowledgement messages is to support reliability in the exchange of death records and coding responses, see [Retrying Requests](#retries) for further details. Acknowledgements are a feature of the FHIR messaging system, they are not intended to be exposed to jurisdiction death registration systems or NVSS directly.

The Acknowlegement Message’s MessageHeader.response.identifier must equal the value of the MessageHeader.id property of the message that is being acknowledged. When processing acknowledgements this identifier must be used to associate the acknowledgement with the message that is being acknowledged. This association is the basis for implementing reliable messaging.

A submission can be routed to NCHS and/or jurisdiction exchange via STEVE using the destinations specified in the [SubmissionHeader]. The destinations can include just NHCS, just jurisdiction exchange via STEVE, or both. This provides the functionality that was previously provided by the IJE REPLACE field as follows:
* Original Record (REPLACE = 0): message destination should include both `http://nchs.cdc.gov/vrdr_submission` and `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission`
* Updated Record(REPLACE = 1): message destination should include both `http://nchs.cdc.gov/vrdr_submission` and `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission_update`
* Do not send to NCHS (REPLACE = 2): message destination should include just `http://steve.naphsis.us/vrdr_exchange` and message should use an `eventUri` of `http://nchs.cdc.gov/vrdr_submission_update`

See the [Mortality Specific](message.html#mortality-specific) section below for details on message content.


#### Updating Prior Death Record Submission

<!-- ![Message exchange pattern for updating a prior death record submission](update.png){ width=25% } -->
<figure style="align:middle">
    <img alt = "Message exchange pattern for updating a prior death record submission" style="width:25%;height:auto;float:none;align:middle;" src="update.png"/>
    <figcaption style="bold">Figure 2: Message exchange pattern for updating a prior death record submission</figcaption>
</figure>
&nbsp;

Figure 2 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when an initial submission needs to be subsequently updated. The initial submission of a new record should use a [DeathRecordSubmissionMessage], subsequent updates should use a [DeathRecordUpdateMessage].

As shown in figure 2, depending on timing (whether coding was complete prior to submission of the Death Record Update), the initial submission may result in a Coding Response or not. If a Coding Response is sent prior to the Death Record Update then a Coding Update will be sent following the Death Record Update.

See note in previous section regarding routing to NCHS and Jurisdictions.

#### Updating Prior Coding Response

<!-- ![Message exchange pattern for updating a prior coding response](recode.png){ width=25% } -->

<figure style="align:middle">
<img alt = "Message exchange pattern for updating a prior coding response" style="width:25%;height:auto;float:none;align:middle;" src="recode.png"/>
    <figcaption style="bold">Figure 3: Message exchange pattern for updating a prior coding response</figcaption>
</figure>
&nbsp;

Figure 3 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when a prior Coding Response needs to be subsequently updated.  Coding updates  should use a [DemographicsCodingUpdateMessage] or [CauseOfDeathCodingUpdateMessage].

#### Voiding Death Records

<!-- ![Message exchange pattern for voiding a prior death record submission](void.png | width=25% ) -->

<figure style="align:middle">
<img alt = "Message exchange pattern for voiding a prior death record submission" style="width:25%;height:auto;float:none;align:middle;" src="void.png"/>
    <figcaption style="bold">Figure 4: Message exchange pattern for voiding a prior death record submission</figcaption>
</figure>
&nbsp;

Figure 4 illustrates the sequence of message exchanges between a vital records jurisdiction and NVSS when an initial submission needs to be subsequently voided. Depending on timing, the initial submission may result in a Coding Response or not.

Records can also be pre-voided to inform NCHS that a specific set of certificate numbers will not be used in the future. This would just require the final three steps of figure 5: "Death Record Void", "Extract" and "Acknowledgement". Voiding death records should use a [DeathRecordVoidMessage].

See note in previous section about Submission of death records regarding routing to NCHS and Jurisdictions.

#### Retrying Requests {#retries}

<!-- ![Message exchange pattern for retrying an unacknowledged death record submission](retry.png){ width=25% } -->


<figure style="align:middle">
<img alt = "Message exchange pattern for retrying an unacknowledged death record submission" style="width:25%;height:auto;float:none;align:middle;" src="retry.png"/>
    <figcaption style="bold">Figure 5: Message exchange pattern for retrying an unacknowledged death record submission</figcaption>
</figure>
&nbsp;

Figure 5 illustrates the case where the vital records jurisdiction does not receive a timely Acknowledgement to the Death Record Submission. Submissions can be retried providing the restrictions on Message and Header ids described in section 5 are followed.

It is recommended that the API server and each client attempt a maximum of 3 retries, waiting 4 hrs after the first attempt, 8 hours after the 2nd attempt, and 12 hours after the third attempt.  If no acknowledgment is received within 12 hours of the third attempt, communication through another channel (e.g., phone or e-mail) should be used to identify and resolve the problem.   This approach prevents retries from overloading NVSS in the case of transient outages.

<!-- ![Message exchange pattern for retrying an unacknowledged coding response](retry2.png){ width=25% } -->



<figure style="align:middle">
<img alt = "Message exchange pattern for retrying an unacknowledged coding response" style="width:25%;height:auto;float:none;align:middle;" src="retry2.png"/>
    <figcaption style="bold">Figure 6: Message exchange pattern for retrying an unacknowledged coding response</figcaption>
</figure>
&nbsp;


Figure 6 illustrates the case where the vital records jurisdiction does not receive a Coding Response. NVSS will not receive the expected Acknowledgement and this will trigger resending of the Coding Response.

<!-- ![Message exchange pattern for retrying an unacknowledged coding update](retry3.png){ width=25% } -->

<figure style="align:middle">
<img alt = "Message exchange pattern for retrying an unacknowledged coding update" style="width:25%;height:auto;float:none;align:middle;" src="retry3.png"/>
    <figcaption style="bold">Figure 7: Message exchange pattern for retrying an unacknowledged coding response</figcaption>
</figure>
&nbsp;



Figure 7 illustrates the case where the Acknowledgement of a Coding Update message is not received by NVSS. NVSS resends the Coding Update message, the jurisdiction resends the Acknowledgement and ignores the duplicate message.

##### Acknowledgement Timeout Considerations

The appropriate time to wait for an acknowledgement depends on several factors including the underlying mechanism for message exchange. E.g. an implementation based on polling for messages would have to factor in the interval between polls since that sets a lower bound on the time to wait for acknowledgements.

#### Message Extraction Failures

<!-- ![Message exchange patterns for failed message extractions](error.png){ width=25% } -->
<figure style="align:middle">
<img alt = "Message exchange patterns for failed message extractions" style="width:25%;height:auto;float:none;align:middle;" src="error.png"/>
    <figcaption style="bold">Figure 8: Message exchange patterns for failed message extractions</figcaption>
</figure>
&nbsp;


Figure 8 illustrates two message extraction failures:

1. A Death Record Submission could not be extracted from the message and an Extraction Error Response is created instead of an Acknowledgement. Note that the return of warnings is supported by the AcknowledgementMessage.
2. A Coding Response could not be extracted from the message and an Extraction Error Response is returned instead of an acknowledgement.   __Note__:The NCHS API currently does not currently accept [ExtractionErrorMessage].  In the event that a jurisdiction can't extract content from an NCHS-generated message, the jurisdiction should contact NCHS using out of band channels (e.g., e-mail).

Extraction Error Response should use a [ExtractionErrorMessage].  For submissions to NCHS, the set of current error messages are listed and described [here](business_rules.html).


For a given Record Submission or Coding Response:

- Extraction Error Response and Acknowledgment are mutually exclusive
- An acknowledged Submission or Coding Response can still result in issues later in the process that might require manual intervention

In either scenarion, the recipient of the Extraction Error Response would need to investigate the cause of the failure using the information provided in the Extraction Error Response message.

#### Alias Messages for Death Records

<!-- ![Message exchange patterns for failed message extractions](alias.png){ width=25% } -->
<figure style="align:middle">
<img alt = "Message exchange patterns for submission of alias message" style="width:25%;height:auto;float:none;align:middle;" src="alias.png"/>
    <figcaption style="bold">Figure 9: Message exchange patterns for submission of alias message</figcaption>
</figure>
&nbsp;
Alias records are optional records that are submitted only for National Death Index purposes and contain alternate spellings or “AKA”s captured on some death certificates.  Some Alias records are literally just a mixed case or upper case version of the original record with no real significant differences.  States vary in whether they even can report Aliases or not, and many never do. Alias records are accumulated, and cannot be voided or deleted separate from their accompaassociated ying death record.

Figure 9 illustrates the submission of a death message followed by an alias message.
Alias messages can contain aliases for one or more of the following fields:
* Decedent’s First Name
* Decedent’s Middle Initial
* Decedent’s Last Name
* Decedent’s Name Suffix
* Father’s Surname
* Social Security Number

Alias records should be sent using a [DeathRecordAliasMessage].

#### Messages for Birth Records
The message flow for Birth Records is very similar to the flow for Death Records.  A jurisdiction submits a [BirthReportMessage], and subsequently NCHS sends coded content that can include [IndustryOccupationCodingMessage], and [DemographicsCodingMessage]. Update versions of these messages are also available.   Exceptions can be handled with [ExtractionErrorMessage] and [StatusMessage].  

#### Messages for Fetal Death Records
The message flow for Fetal Death Records is very similar to the flow for Death Records.  A jurisdiction submits a [FetalDeathReportMessage], and subsequently NCHS sends coded content that can include [CodedCauseOfDeathMessage], [IndustryOccupationCodingMessage], and [DemographicsCodingMessage]. Update versions of these messages are also available.   Exceptions can be handled with [ExtractionErrorMessage] and [StatusMessage]. 

### Message Structure and Content 
Most messages are used for multiple use cases.  The Event URI used for each use case is different.  See the documentation in the header associated with each message for details on the event URI.

#### Messages Used in Multiple Use Cases

| *Type* | *Dir* | *Header* | *Parameters* | *Body* | *Note* |
|------------------------------|--------|--------|------------|------|
| [VoidMessage] | In | [VoidHeader] | [VoidParameters] | - | |
| [StatusMessage] | Out | [StatusHeader] | [StatusParameters]| -  | |
| [AcknowledgementMessage] | In/Out | [AcknowledgementHeader] | [MessageParameters]  | [Outcome] (optional)  | Outcome used for warnings |
| [ExtractionErrorMessage] | Out | [ExtractionErrorHeader] | [MessageParameters]  (optional) | [Outcome] |  |
| [CauseOfDeathCodingMessage] | Out | [CauseOfDeathCodingHeader] | [MessageParameters]|  CauseOfDeathCodedContentBundle   | Death and Fetal Death only |
| [CauseOfDeathCodingUpdateMessage] | Out | [CauseOfDeathCodingUpdateHeader] | [MessageParameters]|  CauseOfDeathCodedContentBundle   | Death and Fetal Death only |
| [DemographicsCodingMessage] | Out | [DemographicsCodingHeader] | [MessageParameters]|  DemographicCodedContentBundle   |  |
| [DemographicsCodingUpdateMessage] | Out | [DemographicsCodingUpdateHeader] | [MessageParameters]|  DemographicCodedContentBundle  | |
| [IndustryOccupationCodingMessage] | Out | [IndustryOccupationCodingHeader] | [MessageParameters] | IndustryOccupationCodedContentBundle   |  Not supported in VRDR STU2.2|
| [IndustryOccupationCodingUpdateMessage] | Out | [IndustryOccupationCodingUpdateHeader] | [MessageParameters] | IndustryOccupationCodedContentBundle   | Not supported in VRDR STU2.2 |
{: .grid }

#### Mortality Specific

| *Type* | *Dir* | *Header* | *Parameters* | *Body* (from VRDR) |
|------------------------------|--------|--------|------------|------|
| [DeathRecordSubmissionMessage] | In | [SubmissionHeader] | [MessageParameters] | DeathCertificateDocument   |
| [DeathRecordUpdateMessage] | In | [UpdateHeader] | [MessageParameters] | [DeathCertificateDocument]  |
| [DeathRecordAliasMessage] | In | [AliasHeader] | [AliasParameters] | - |
{: .grid }

#### Mortality Maternal Linkage Specific (*New*)

| *Type* | *Dir* | *Header* | *Parameters* | *Body* (from VRDR) |
|------------------------------|--------|--------|------------|------|
| [MaternalLinkageRequestMessage] | In | [MaternalLinkageRequestHeader] | [MessageParameters] |  -   |
| [MaternalLinkageUpdateMessage] | In | [MaternalLinkageUpdateHeader] | [MessageParameters]   | [MaternalLinkageContentBundle] |
| [MaternalLinkageSubmissionMessage] | In | [MaternalLinkageSubmissionHeader] | [MessageParameters] | [MaternalLinkageContentBundle] |
{: .grid }

#### Birth Specific

| *Type* | *Dir* | *Header* | *Parameters* | *Body* (from BFDR) |
|------------------------------|--------|--------|------------|------|
| [BirthReportMessage] | In | [SubmissionHeader] | [MessageParameters] | BundleDocumentBFDR |
| [BirthReportUpdateMessage] | In | [UpdateHeader] | [MessageParameters]  | BundleDocumentBFDR |
{: .grid }

#### Fetal Death Specific

| *Type* | *Dir* | *Header* | *Parameters* | *Body* (from BFDR) |
|------------------------------|--------|--------|------------|------|
| [FetalDeathReportMessage] | In | [SubmissionHeader] | [MessageParameters] | BundleDocumentBFDR  |
| [FetalDeathReportUpdateMessage] | In | [UpdateHeader] | [MessageParameters] | BundleDocumentBFDR |
{: .grid }


{% include markdown-link-references.md %}