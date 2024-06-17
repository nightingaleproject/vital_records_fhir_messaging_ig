Profile: Outcome
Parent: OperationOutcome
Id: VRM-Outcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"
* insert RequireMetaProfile(OperationOutcome)

// RuleSet: BundleEntry(name, min, max, short, def, class)
// * entry contains {name} {min}..{max} MS
// * entry[{name}] ^short = "{short}"
// * entry[{name}] ^definition = "{def}"
// * entry[{name}].resource only {class}

Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRM-DeathRecordSubmissionMessage
Title: "Death Record Submission Message"
Description:   "Message for submitting death records"
* insert RequireMetaProfile(DeathRecordSubmissionMessage)
* insert CommonBundleStuff
* entry contains messageHeader 1..1 MS
* entry[messageHeader] ^short = "Header"
* entry[messageHeader] ^definition = "Header"
* entry[messageHeader].resource only MessageHeader
* entry contains deathRecordParameters 1..1 MS
* entry[deathRecordParameters] ^short = "deathRecordParameters"
* entry[deathRecordParameters] ^definition = "deathRecordParameters"
* entry[deathRecordParameters].resource only Parameters
* entry contains deathRecordCertificate 1..1 MS
* entry[deathRecordCertificate] ^short = "Death Record Certificate Documen"
* entry[deathRecordCertificate] ^definition = "Death Record Certificate Documen"
* entry[deathRecordCertificate].resource only Bundle
// * insert BundleEntry(messageHeader, 1, 1, Header , Header, SubmissionHeader)
//* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)
//* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, MessageBundle)
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
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, MessageBundle)


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
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, MessageBundle)

Profile: CauseOfDeathCodingMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingMessage
Title: "Cause of Death Coding Message"
Description:   "Message for cause of death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CauseOfDeathCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Cause of Death Coded Content Bundle, CauseOfDeathCodedContentBundle, MessageBundle)
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
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, MessageBundle)

Profile: CauseOfDeathCodingUpdateMessage
Parent: Bundle
Id: VRM-CauseOfDeathCodingUpdateMessage
Title: "Cause Of Death Coding Update Message"
Description:   "Message for updating Cause Of Death coding response to death records"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Cause Of Death Coding  Update Header , Cause Of Death Coding  Update Header, CauseOfDeathCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Cause of Death Coded Content Bundle, CauseOfDeathCodedContentBundle, MessageBundle)


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


Profile: BirthReportMessage
Parent: Bundle
Id: VRM-BirthReportMessage
Title: "Birth Report Message"
Description:   "Message for reporting birth records"
* insert RequireMetaProfile(BirthReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Header, Birth Report Header, BirthReportHeader)
* insert BundleEntry(birthReportParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(birthReportDocument, 1, 1, Birth Report Document, Birth Report Document, MessageBundle)


Profile: BirthReportUpdateMessage
Parent: Bundle
Id: VRM-BirthReportUpdateMessage
Title: "Birth Report Update Message"
Description:   "Message for updating birth records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Update Header, Birth Report Update Header, BirthReportUpdateHeader)
* insert BundleEntry(birthReportParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(birthReportDocument, 1, 1, Birth Report Document, Birth Report Document, MessageBundle)


Profile: CodedCauseOfFetalDeathMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathMessage
Title: "Coded Cause of Fetal Death Message"
Description:   "Message for reporting coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Header, Coded Cause of Fetal Death Header, CodedCauseOfFetalDeathHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, MessageBundle)


Profile: CodedCauseOfFetalDeathUpdateMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathUpdateMessage
Title: "Coded Cause of Fetal Death Update Message"
Description:   "Message for updating coded cause of fetal death"
* insert RequireMetaProfile(CodedCauseOfFetalDeathUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Update Header, Coded Cause of Fetal Death Update Header, CodedCauseOfFetalDeathUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, MessageBundle)


Profile: ParentalDemographicsCodingMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingMessage
Title: "Parental Demographics Message"
Description:   "Message for reporting parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographics Header, Parental Demographics Header, ParentalDemographicsCodingHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, MessageBundle)


Profile: ParentalDemographicsCodingUpdateMessage
Parent: Bundle
Id: VRM-ParentalDemographicsCodingUpdateMessage
Title: "Parental Demographics Update Message"
Description:   "Message for updating parental demographics"
* insert RequireMetaProfile(ParentalDemographicsCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Parental Demographicsh Update Header, Parental Demographics Update Header, ParentalDemographicsCodingUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, MessageBundle)


Profile: FetalDeathReportMessage
Parent: Bundle
Id: VRM-FetalDeathReportMessage
Title: "Fetal Death Report Message"
Description:   "Message for reporting fetal death records"
* insert RequireMetaProfile(FetalDeathReportMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Header, Fetal Death Report Header, FetalDeathReportHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, MessageBundle)


Profile: FetalDeathReportUpdateMessage
Parent: Bundle
Id: VRM-FetalDeathReportUpdateMessage
Title: "Fetal Death Report Message"
Description:   "Message for updating fetal death records"
* insert RequireMetaProfile(FetalDeathReportUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Update Header, Fetal Death Report Update Header, FetalDeathReportUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, MessageBundle)

Profile: IndustryOccupationCodingMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingMessage
Title: "Industry Occupation Coding Message"
Description:   "Message for industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, IndustryOccupationCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, Bundle )

Profile: IndustryOccupationCodingUpdateMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingUpdateMessage
Title: "Industry Occupation Coding Update Message"
Description:   "Message for updating industry occupation coding response to death records"
* insert RequireMetaProfile(IndustryOccupationCodingUpdateMessage)
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Industry Occupation Coding Update Header , Industry Occupation Coding Update Header, IndustryOccupationCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, MessageBundle)


Profile: MessageBundle
Parent: Bundle
Id: VRM-MessageBundle
Title: "Placeholder Profile for profile-based slicing"
Description:   "Placeholder for profile-based slicing"