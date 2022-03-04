

Profile: Outcome
Parent: OperationOutcome
Id: VRM-Outcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"
* insert RequireMetaProfile(OperationOutcome)


Profile:  SubmissionHeader
Parent: MessageHeader
Description:   "Death Message Submission Header"
Id: VRM-SubmissionHeader
Title:  "Death Message Header"
* insert RequireMetaProfile(SubmissionHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission (exactly)
* insert CommonHeaderStuff
* focus only Reference(Bundle) // DeathCertificateDocument

Profile:  UpdateHeader
Parent: MessageHeader
Id: VRM-UpdateHeader
Description:   "Death Message Update Header"
Title:  "Death Message Update Header"
* insert RequireMetaProfile(UpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_update (exactly)
* insert CommonHeaderStuff
* focus only Reference(Bundle) // DeathCertificateDocument

Profile:  VoidHeader
Parent: MessageHeader
Id: VRM-VoidHeader
Title:  "Void Header"
Description:   "Void Header"
* insert RequireMetaProfile(VoidHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_void (exactly)
* insert CommonHeaderStuff
* focus only Reference(VoidParameters)

Profile:  DemographicsCodingHeader
Parent: MessageHeader
Id: VRM-DemographicsCodingHeader
Title:  "Demographics Coding Header"
Description:   "Demographics Coding Header"
* insert RequireMetaProfile(DemographicsCodingHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference( DemographicsCodingParameters )

Profile:  CauseOfDeathCodingHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingHeader
Title:  "Cause of Death Coding Header"
Description:   "Cause of Death Coding Header"
* insert RequireMetaProfile(CauseOfDeathCodingHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingParameters )

Profile:  DemographicsCodingUpdateHeader
Parent: MessageHeader
Id: VRM-DemographicsCodingUpdateHeader
Title:  "Demographics Coding Update Header"
Description:   "Demographics Coding Update Header"
* insert RequireMetaProfile(DemographicsCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding_update (exactly)
* insert CommonHeaderStuff
* focus only Reference( DemographicsCodingParameters )

Profile:  CauseOfDeathCodingUpdateHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingUpdateHeader
Title:  "Cause Of Death Coding Update  Header"
Description:   "Cause Of Death Death Coding Update Header"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding_update (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingParameters )

Profile:  AliasHeader
Parent: MessageHeader
Id: VRM-AliasHeader
Title:  "Alias Header"
Description:   "Alias Header"
* insert RequireMetaProfile(AliasHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_alias (exactly)
* insert CommonHeaderStuff
* focus only Reference(AliasParameters)

Profile:  AcknowledgementHeader
Parent: MessageHeader
Id: VRM-AcknowledgementHeader
Title:  "Acknowledgement Header"
Description:   "Acknowledgement  Header"
* insert RequireMetaProfile(AcknowledgementHeader)
* eventUri =  MessageHeaderURICS#http://nchs.cdc.gov/vrdr_acknowledgement (exactly)
* insert CommonHeaderStuff
* response.identifier 1..1
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
* response.code = #ok (exactly)
* focus only Reference(MessageParameters)

Profile:  ExtractionErrorHeader
Parent: MessageHeader
Id: VRM-ExtractionErrorHeader
Title:  "Extraction Error Header"
Description:   "Extraction Error Message Header"
* insert RequireMetaProfile(ExtractionErrorHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_extraction_error  (exactly)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.code = #fatal-error
* response.details 1..1
* response.details only Reference(Outcome)
* focus only Reference(MessageParameters)


Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRM-DeathRecordSubmissionMessage
Title: "Death Record Submission Message"
Description:   "Message for submitting death records"
* insert RequireMetaProfile(DeathRecordSubmissionMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Header , Header, SubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)
* insert BundleEntry(IJERecordBase64, 0, 1, IJE Record encoded in Base64, IJE Record encoded in Base64, Binary)


Profile: DeathRecordUpdateMessage
Parent: Bundle
Id: VRM-DeathRecordUpdateMessage
Title: "Death Record Update Message"
Description:   "Message for updating death records"
* insert RequireMetaProfile(DeathRecordUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Update Header , Update Header, UpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordVoidMessage
Parent: Bundle
Id: VRM-DeathRecordVoidMessage
Title: "Death Record Void Message"
Description:   "Message for voiding death records"
* insert RequireMetaProfile(DeathRecordVoidMessage)
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Void Header , Void Header, VoidHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Void Parameters, Void Parameters, VoidParameters)

Profile: DeathRecordAliasMessage
Parent: Bundle
Id: VRM-DeathRecordAliasMessage
Title: "Death Record Alias Message"
Description:   "Message for aliasing death records"
* insert RequireMetaProfile(DeathRecordAliasMessage)
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Alias Header , Alias Header, AliasHeader)
* insert BundleEntry(aliasParameters, 1, 1, Alias Parameters, Aias Parameters, AliasParameters)

Profile: DemographicsCodingMessage
Parent: Bundle
Id: VRM-DemographicsCodingMessage
Title: "Coding Message"
Description:   "Message for demographics coding response to death records"
* insert RequireMetaProfile(DemographicsCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, DemographicsCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(dempar, 1, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingParameters)

Profile: CauseOfDeathCodingMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingMessage
Title: "Cause of Death Coding Message"
Description:   "Message for cause of death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CauseOfDeathCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codpar, 1, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingParameters )

// Profile: CodingUpdateMessage
// Parent: Bundle
// Id: VRM-CodingUpdateMessage
// Title: "Coding Update Message"
// Description:   "Message for updating coding response to death records"
// * insert CommonBundleStuff
// * insert BundleEntry(header, 1, 1, Coding Message Update Header , Coding Message Update Header, CodingMessageUpdateHeader)
// * insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
// * insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)

Profile: DemographicsCodingUpdateMessage
Parent: Bundle
Id: VRM-DemographicsCodingUpdateMessage
Title: "Demographics Coding Update Message"
Description:   "Message for updating Demographics coding response to death records"
* insert RequireMetaProfile(DemographicsCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Coding Update Header , Coding Update Header, DemographicsCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(dempar, 1, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingParameters)

Profile: CauseOfDeathCodingUpdateMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingUpdateMessage
Title: "Cause Of Death Coding Update Message"
Description:   "Message for updating Cause Of Death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Cause Of Death Coding  Update Header , Cause Of Death Coding  Update Header, CauseOfDeathCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codpar, 1, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingParameters )


Profile: AcknowledgementMessage
Parent: Bundle
Id: VRM-AcknowledgementMessage
Title: "Acknowledgement Message"
Description:   "Acknowledgement Message"
* insert RequireMetaProfile(AcknowledgementMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Acknowledgement Header , Acknowledgement Header, AcknowledgementHeader)
* insert BundleEntry(acknowledgementParameters, 1, 1, Acknowledgement Parameters, Acknowledgement Parameters, MessageParameters)


Profile: ExtractionErrorMessage
Parent: Bundle
Id: VRM-ExtractionErrorMessage
Title: "Extraction Error Message"
Description:   "Message for Errors during content extraction"
* insert RequireMetaProfile(ExtractionErrorMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Extraction Error Header , Extraction Error Header, ExtractionErrorHeader)
* insert BundleEntry(extractionErrorParameters, 0, 1, Extraction Error Parameters, Extraction Error Parameters, MessageParameters)
* insert BundleEntry(extractionErrorOutcome, 1, 1, Extraction Error Operation Outcome, Extraction Error Operation Outcome, Outcome)
