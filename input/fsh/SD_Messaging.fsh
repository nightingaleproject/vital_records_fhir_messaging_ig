

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
// * focus contains 
//     parameters 1..1 and payload 1..1 
// * focus[parameters] only Reference (Parameters)
// * focus[payload] only Reference (Bundle)


Profile:  UpdateHeader
Parent: MessageHeader
Id: VRM-UpdateHeader
Description:   "Death Message Update Header"
Title:  "Death Message Update Header"
* insert RequireMetaProfile(UpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_update (exactly)
* insert CommonHeaderStuff
// * focus only Reference(Bundle) // DeathCertificateDocument

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
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference( Bundle )

Profile:  StatusHeader
Parent: MessageHeader
Id: VRM-StatusHeader
Title:  "Status Header"
Description:   "Status Header"
* insert RequireMetaProfile(StatusHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_status (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message for which status is provided"
* focus only Reference(StatusParameters )

Profile:  CauseOfDeathCodingHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingHeader
Title:  "Cause of Death Coding Header"
Description:   "Cause of Death Coding Header"
* insert RequireMetaProfile(CauseOfDeathCodingHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )

Profile:  IndustryOccupationCodingHeader
Parent: MessageHeader
Id: VRM-IndustryOccupationCodingHeader
Title:  "Industry Occupation Coding Header"
Description:   "Industry Occupation Coding Header"
* insert RequireMetaProfile(IndustryOccupationCodingHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_industryoccupation_coding (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )

Profile:  DemographicsCodingUpdateHeader
Parent: MessageHeader
Id: VRM-DemographicsCodingUpdateHeader
Title:  "Demographics Coding Update Header"
Description:   "Demographics Coding Update Header"
* insert RequireMetaProfile(DemographicsCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding_update (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference( Bundle )

Profile:  CauseOfDeathCodingUpdateHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingUpdateHeader
Title:  "Cause Of Death Coding Update  Header"
Description:   "Cause Of Death Coding Update Header"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding_update (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )

Profile:  IndustryOccupationCodingUpdateHeader
Parent: MessageHeader
Id: VRM-IndustryOccupationCodingUpdateHeader
Title:  "Industy Occupation Coding Update  Header"
Description:   "Industry Occupation Coding Update Header"
* insert RequireMetaProfile(IndustryOccupationCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_industryoccupation_coding_update (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )

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
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
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
* response.identifier 1..1
* response.code 1..1
* response.code = #fatal-error (exactly)
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
//* insert BundleEntry(IJERecordBase64, 0, 1, IJE Record encoded in Base64, IJE Record encoded in Base64, Binary)


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

Profile: StatusMessage
Parent: Bundle
Id: VRM-StatusMessage
Title: "Status Message"
Description:   "Message for sending status of DeathRecord processing"
* insert RequireMetaProfile(StatusMessage)
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Status Header , Status Header, StatusHeader)
* insert BundleEntry(statusParameters, 1, 1, Status Parameters, Status Parameters, StatusParameters)

Profile: DemographicsCodingMessage
Parent: Bundle
Id: VRM-DemographicsCodingMessage
Title: "Demographics Coding Message"
Description:   "Message for demographics coding response to death records"
* insert RequireMetaProfile(DemographicsCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, DemographicsCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, DemographicCodedContentBundle)

Profile: CauseOfDeathCodingMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingMessage
Title: "Cause of Death Coding Message"
Description:   "Message for cause of death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CauseOfDeathCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Cause of Death Coded Content Bundle, CauseOfDeathCodedContentBundle, CauseOfDeathCodedContentBundle)
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
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, DemographicCodedContentBundle)

Profile: CauseOfDeathCodingUpdateMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingUpdateMessage
Title: "Cause Of Death Coding Update Message"
Description:   "Message for updating Cause Of Death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Cause Of Death Coding  Update Header , Cause Of Death Coding  Update Header, CauseOfDeathCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Cause of Death Coded Content Bundle, CauseOfDeathCodedContentBundle, CauseOfDeathCodedContentBundle)


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


Profile: FetalDeathReportMessage
Parent: Bundle
Id: VRM-FetalDeathReportMessage
Title: "Fetal Death Report Message"
Description:   "Message for reporting fetal death records"
* insert RequireMetaProfile(FetalDeathReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Header, Fetal Death Report Header, FetalDeathReportHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: FetalDeathReportUpdateMessage
Parent: Bundle
Id: VRM-FetalDeathReportUpdateMessage
Title: "Fetal Death Report Message"
Description:   "Message for updating fetal death records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Update Header, Fetal Death Report Update Header, FetalDeathReportUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: BirthReportMessage
Parent: Bundle
Id: VRM-BirthReportMessage
Title: "Birth Report Message"
Description:   "Message for reporting birth records"
* insert RequireMetaProfile(BirthReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Header, Birth Report Header, BirthReportHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Birth Report Document, Birth Report Document, BundleDocumentBFDR)


Profile: BirthReportUpdateMessage
Parent: Bundle
Id: VRM-BirthReportUpdateMessage
Title: "Birth Report Update Message"
Description:   "Message for updating birth records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Update Header, Birth Report Update Header, BirthReportUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: CodedCauseOfFetalDeathMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathMessage
Title: "Coded Cause of Fetal Death Message"
Description:   "Message for reporting coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Header, Coded Cause of Fetal Death Header, CodedCauseOfFetalDeathHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, CodedCauseOfFetalDeathBundleBFDR)


Profile: CodedCauseOfFetalDeathUpdateMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathUpdateMessage
Title: "Coded Cause of Fetal Death Update Message"
Description:   "Message for updating coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Update Header, Coded Cause of Fetal Death Update Header, CodedCauseOfFetalDeathUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, CodedCauseOfFetalDeathBundleBFDR)


Profile: ParentalDemographicsCodingMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingMessage
Title: "Parental Demographics Message"
Description:   "Message for reporting parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographics Header, Parental Demographics Header, ParentalDemographicsCodingHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, DemographicCodedContentBundleBFDR)


Profile: ParentalDemographicsCodingUpdateMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingUpdateMessage
Title: "Parental Demographics Update Message"
Description:   "Message for updating parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographicsh Update Header, Parental Demographics Update Header, ParentalDemographicsCodingUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, DemographicCodedContentBundleBFDR)


Profile: FetalDeathReportMessage
Parent: Bundle
Id: VRM-FetalDeathReportMessage
Title: "Fetal Death Report Message"
Description:   "Message for reporting fetal death records"
* insert RequireMetaProfile(FetalDeathReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Header, Fetal Death Report Header, FetalDeathReportHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: FetalDeathReportUpdateMessage
Parent: Bundle
Id: VRM-FetalDeathReportUpdateMessage
Title: "Fetal Death Report Message"
Description:   "Message for updating fetal death records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Update Header, Fetal Death Report Update Header, FetalDeathReportUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: BirthReportMessage
Parent: Bundle
Id: VRM-BirthReportMessage
Title: "Birth Report Message"
Description:   "Message for reporting birth records"
* insert RequireMetaProfile(BirthReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Header, Birth Report Header, BirthReportHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Birth Report Document, Birth Report Document, BundleDocumentBFDR)


Profile: BirthReportUpdateMessage
Parent: Bundle
Id: VRM-BirthReportUpdateMessage
Title: "Birth Report Update Message"
Description:   "Message for updating birth records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Update Header, Birth Report Update Header, BirthReportUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, BundleDocumentBFDR)


Profile: CodedCauseOfFetalDeathMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathMessage
Title: "Coded Cause of Fetal Death Message"
Description:   "Message for reporting coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Header, Coded Cause of Fetal Death Header, CodedCauseOfFetalDeathHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, CodedCauseOfFetalDeathBundleBFDR)


Profile: CodedCauseOfFetalDeathUpdateMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathUpdateMessage
Title: "Coded Cause of Fetal Death Update Message"
Description:   "Message for updating coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Update Header, Coded Cause of Fetal Death Update Header, CodedCauseOfFetalDeathUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, CodedCauseOfFetalDeathBundleBFDR)


Profile: ParentalDemographicsCodingMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingMessage
Title: "Parental Demographics Message"
Description:   "Message for reporting parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographics Header, Parental Demographics Header, ParentalDemographicsCodingHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, DemographicCodedContentBundleBFDR)


Profile: ParentalDemographicsCodingUpdateMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingUpdateMessage
Title: "Parental Demographics Update Message"
Description:   "Message for updating parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographicsh Update Header, Parental Demographics Update Header, ParentalDemographicsCodingUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, DemographicCodedContentBundleBFDR)


Profile: IndustryOccupationCodingMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingMessage
Title: "Industry Occupation Coding Message"
Description:   "Message for industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, IndustryOccupationCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, IndustryOccupationCodedContentBundle)

Profile: IndustryOccupationCodingUpdateMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingUpdateMessage
Title: "Industry Occupation Coding Update Message"
Description:   "Message for updating industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Industry Occupation Coding Update Header , Industry Occupation Coding Update Header, IndustryOccupationCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, IndustryOccupationCodedContentBundle)


Profile: IndustryOccupationCodingMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingMessage
Title: "Industry Occupation Coding Message"
Description:   "Message for industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, IndustryOccupationCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, IndustryOccupationCodedContentBundle)

Profile: IndustryOccupationCodingUpdateMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingUpdateMessage
Title: "Industry Occupation Coding Update Message"
Description:   "Message for updating industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Industry Occupation Coding Update Header , Industry Occupation Coding Update Header, IndustryOccupationCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, IndustryOccupationCodedContentBundle)