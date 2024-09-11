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
//* focus only Reference(Bundle) // DeathCertificateDocument

Profile:  VoidHeaderDeath
Parent: MessageHeader
Id: VRM-VoidHeader
Title:  "Void Header Death"
Description:   "Void Header Death -- deprecated.  Use [VoidHeader]"
* insert RequireMetaProfile(VoidHeaderDeath)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_void (exactly)
* insert CommonHeaderStuff
//* focus only Reference(VoidParameters)

Profile:  VoidHeader
Parent: MessageHeader
Id: VRM-VoidHeaderGeneral
Title:  "Void Header"
Description:   "Void Header for all submission types"
* insert RequireMetaProfile(VoidHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/submission_void (exactly)
* insert CommonHeaderStuff
//* focus only Reference(VoidParameters)

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
Description:   "Cause Of Death Death Coding Update Header"
* insert RequireMetaProfile(CauseOfDeathCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding_update (exactly)
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

Profile:  FetalDeathReportHeader
Parent: MessageHeader
Description:   "Fetal Death Message Report Message Header"
Id: VRM-FetalDeathReportHeader
Title:  "Fetal Death Report Message Header"
* insert RequireMetaProfile(FetalDeathReportHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_death (exactly)
* insert CommonHeaderStuff

Profile:  FetalDeathReportUpdateHeader
Parent: MessageHeader
Description:   "Fetal Death Report Message Update Header"
Id: VRM-FetalDeathReportUpdateHeader
Title:  "Fetal Death Report Message Update Header"
* insert RequireMetaProfile(FetalDeathReportUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_death_update (exactly)
* insert CommonHeaderStuff

Profile:  BirthReportHeader
Parent: MessageHeader
Description:   "Birth Report Message Header"
Id: VRM-BirthReportHeader
Title:  "Birth Report Message Header"
* insert RequireMetaProfile(BirthReportHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_birth (exactly) 
* insert CommonHeaderStuff

Profile:  BirthReportUpdateHeader
Parent: MessageHeader
Description:   "Birth Report Message Update Header"
Id: VRM-BirthReportUpdateHeader
Title:  "Birth Report Message Update Header"
* insert RequireMetaProfile(BirthReportUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_birth_update (exactly)
* insert CommonHeaderStuff

Profile:  CodedCauseOfFetalDeathHeader
Parent: MessageHeader
Description:   "Coded Cause of Fetal Death Report Message Header"
Id: VRM-CodedCauseOfFetalDeathHeader
Title:  "Coded Cause of Fetal Death Report Message Header"
* insert RequireMetaProfile(CodedCauseOfFetalDeathHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_causeofdeath (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Fetal Death Record message that is being coded"

Profile:  CodedCauseOfFetalDeathUpdateHeader
Parent: MessageHeader
Description:   "Coded Cause of Fetal Death Report Message Update Header"
Id: VRM-CodedCauseOfFetalDeathUpdateHeader
Title:  "Coded Cause of Fetal Death Report Message Update Header"
* insert RequireMetaProfile(CodedCauseOfFetalDeathUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_causeofdeath_update (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Fetal Death Record message that is being coded"

Profile:  ParentalDemographicsCodingHeader
Parent: MessageHeader
Description:   "Parental Demographics Message Header"
Id: VRM-ParentalDemographicsCodingHeader
Title:  "Parental Demographics Message Header"
* insert RequireMetaProfile(ParentalDemographicsCodingHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_demographics_coding (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Birth or Fetal Death Record message that is being coded"

Profile: ParentalDemographicsCodingUpdateHeader
Parent: MessageHeader
Description:   "Parental Demographics Message Update Header"
Id: VRM-ParentalDemographicsCodingUpdateHeader
Title:  "Parental Demographics Message Update Header"
* insert RequireMetaProfile(ParentalDemographicsCodingUpdateHeader)
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/bfdr_demographics_coding_update (exactly)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Birth or Fetal Death Record message that is being coded"

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