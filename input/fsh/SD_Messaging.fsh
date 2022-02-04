

Profile: DeathMessageOutcome
Parent: OperationOutcome
Id: VRM-DeathMessageOutcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"


Profile:  DeathMessageSubmissionHeader
Parent: MessageHeader
Description:   "Death Message Submission Header"
Id: VRM-DeathMessageSubmissionHeader
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathRecordUpdateHeader
Parent: MessageHeader
Id: VRM-DeathRecordUpdateHeader
Description:   "Death Message Update Header"
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_update (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathMessageVoidHeader
Parent: MessageHeader
Id: VRM-DeathMessageVoidHeader
Title:  "Death Message Void Header"
Description:   "Death Message Void Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_void (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageVoidParameters)

// Profile:  CodingMessageHeader
// Parent: MessageHeader
// Id: VRM-CodingMessageHeader
// Title:  "Coding Message Header"
// Description:   "Death Message Coding Header"
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding (exactly)
// * insert CommonHeaderStuff
// * focus only Reference(CauseOfDeathCodingMessageParameters or DemographicsCodingMessageParameters )

Profile:  DemographicsCodingMessageHeader
Parent: MessageHeader
Id: VRM-CodingMessageHeader
Title:  "Demographics Coding Message Header"
Description:   "Demographics Coding Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference( DemographicsCodingMessageParameters )

Profile:  CauseOfDeathCodingMessageHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingMessageHeader
Title:  "Cause of Death Coding Message Header"
Description:   "Cause of Death Coding Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters )

Profile:  DemographicsCodingMessageUpdateHeader
Parent: MessageHeader
Id: VRM-DemographicsCodingMessageUpdateHeader
Title:  "Demographics Coding Message Update Header"
Description:   "Demographics Coding Message Update Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding_update (exactly)
* insert CommonHeaderStuff
* focus only Reference( DemographicsCodingMessageParameters )

Profile:  CauseOfDeathCodingMessageUpdateHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingUpdateMessageHeader
Title:  "Cause Of Death Coding Message Update Header"
Description:   "Cause Of Death Death Coding Message Coding Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding_update (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters )

// Profile:  CodingMessageUpdateHeader
// Parent: MessageHeader
// Id: VRM-CodingMessageUpdateHeader
// Title:  "Coding Message Update Header"
// Description:   "Death Message Update Header"
// * eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding_update (exactly)
// * insert CommonHeaderStuff
// * focus only Reference(CauseOfDeathCodingMessageParameters or DemographicsCodingMessageParameters)

Profile:  DeathMessageAliasHeader
Parent: MessageHeader
Id: VRM-DeathMessageAliasHeader
Title:  "Death Message Alias Header"
Description:   "Death Message Alias Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_alias (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageAliasParameters)

Profile:  AcknowledgementMessageHeader
Parent: MessageHeader
Id: VRM-AcknowledgementMessageHeader
Title:  "Acknowledgement Message Header"
Description:   "Acknowledgement Message Header"
* eventUri =  MessageHeaderURICS#http://nchs.cdc.gov/vrdr_acknowledgement (exactly)
* insert CommonHeaderStuff
* response.identifier 1..1
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
* response.code = #ok (exactly)
* focus only Reference(DeathMessageParameters)

Profile:  ExtractionErrorHeader
Parent: MessageHeader
Id: VRM-ExtractionErrorHeader
Title:  "Extraction Error Header"
Description:   "Extraction Error Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_extraction_error  (exactly)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.code = #fatal-error
* response.details 1..1
* response.details only Reference(DeathMessageOutcome)
* focus only Reference(DeathMessageParameters)


Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRM-DeathRecordSubmissionMessage
Title: "Death Record Submission Message"
Description:   "Message for submitting death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageSubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordUpdateMessage
Parent: Bundle
Id: VRM-DeathRecordUpdateMessage
Title: "Death Record Update Message"
Description:   "Message for updating death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathRecordUpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordVoidMessage
Parent: Bundle
Id: VRM-DeathRecordVoidMessage
Title: "Death Record Void Message"
Description:   "Message for voiding death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageVoidHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Void Parameters, Death Record Void Parameters, DeathMessageVoidParameters)

Profile: DeathRecordAliasMessage
Parent: Bundle
Id: VRM-DeathRecordAliasMessage
Title: "Death Record Alias Message"
Description:   "Message for aliasing death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageAliasHeader)
* insert BundleEntry(aliasParameters, 1, 1, Death Message Alias Parameters, Death Record Aias Parameters, DeathMessageAliasParameters)

// Profile: CodingMessage
// Parent: Bundle
// Id: VRM-CodingMessage
// Title: "Coding Message"
// Description:   "Message for coding response to death records"
// * entry ^slicing.discriminator.type = #pattern
// * entry ^slicing.discriminator.path = "resource.meta.profile"
// * entry ^slicing.rules = #open
// * entry ^slicing.description = "Slicing based on the profile named in entry.resource.meta.profile"
// * insert CommonBundleStuff
// // * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
// * insert BundleEntry(header, 1, 1, Message Header , Message Header, CodingMessageHeader)
// * insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
// * insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)

Profile: DemographicsCodingMessage
Parent: Bundle
Id: VRM-DemographicsCodingMessage
Title: "Coding Message"
Description:   "Message for demographics coding response to death records"
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile named in entry.resource.meta.profile"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(header, 1, 1, Message Header , Message Header, DemographicsCodingMessageHeader)
* insert BundleEntry(dem, 1, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)

Profile: CauseOfDeathCodingMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingMessage
Title: "Cause of Death Coding Message"
Description:   "Message for cause of death coding response to death records"
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile named in entry.resource.meta.profile"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CauseOfDeathCodingMessageHeader)
* insert BundleEntry(cod, 1, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )

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
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Coding Message Update Header , Coding Message Update Header, DemographicsCodingMessageUpdateHeader)
* insert BundleEntry(dem, 1, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)

Profile: CauseOfDeathCodingUpdateMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingUpdateMessage
Title: "Cause Of Death Coding Update Message"
Description:   "Message for updating Cause Of Death coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Cause Of Death Coding Message Update Header , Cause Of Death Coding Message Update Header, CauseOfDeathCodingMessageUpdateHeader)
* insert BundleEntry(cod, 1, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )


Profile: AcknowledgementMessage
Parent: Bundle
Id: VRM-AcknowledgementMessage
Title: "Acknowledgement Message"
Description:   "Acknowledgement Message"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Acknowledgement Message Header , Acknowledgement Message Header, AcknowledgementMessageHeader)
* insert BundleEntry(acknowledgementParameters, 1, 1, Acknowledgement Message Parameters, Acknowledgement Parameters, DeathMessageParameters)


Profile: ExtractionErrorMessage
Parent: Bundle
Id: VRM-ExtractionErrorMessage
Title: "Extraction Error Message"
Description:   "Message for Errors during content extraction"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Extraction Error Message Header , Extraction Error Message Header, ExtractionErrorHeader)
* insert BundleEntry(extractionErrorParameters, 0, 1, Extraction Error Message Parameters, Extraction Error Parameters, DeathMessageParameters)
* insert BundleEntry(extractionErrorOutcome, 1, 1, Extraction Error Operation Outcome, Extraction Error Operation Outcome, DeathMessageOutcome)
