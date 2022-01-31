

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

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRM-CodingMessageHeader
Title:  "Coding Message Header"
Description:   "Death Message Coding Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters or DemographicsCodingMessageParameters )

Profile:  CodingMessageUpdateHeader
Parent: MessageHeader
Id: VRM-CodingMessageUpdateHeader
Title:  "Coding Message Update Header"
Description:   "Death Message Update Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding_update (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters or DemographicsCodingMessageParameters)

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

Profile:  DeathMessageParameters
Parent: Parameters
Id: VRM-DeathMessageParameters
Description:   "Base parameter set for most Messages"
Title:  "Death Message Parameters"
* id MS
// jurisdiction_id
// cert_no
// death_year
// state_auxiliary_id
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 0..1 and
    cert_no 0..1 and
    death_year 0..1 and
    state_auxiliary_id 0..1 and
    ssn 0..1 //   needed?
* insert BaseMessageParameterSlices

Profile: DeathMessageVoidParameters
Parent: DeathMessageParameters
Id: VRM-DeathMessageVoidParameters
Description:   "Parameters for a Void Death Message"
* parameter contains
    block_count 1..1
* insert ParameterNameType(block_count, unsignedInt, number of records to void, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of `1` is assumed meaning only a single record will be voided.)

Profile: DeathMessageAliasParameters
Parent: DeathMessageParameters
Id: VRM-DeathMessageAliasParameters
Description:   "Parameters for an Alias Message"
* parameter contains
    alias_decedent_first_name 0..1 and
    alias_decedent_last_name 0..1 and
    alias_decedent_middle_name 0..1 and
    alias_decedent_name_suffix 0..1 and
    alias_father_surname 0..1 and
    alias_social_security_number 0..1
* insert ParameterNameType(alias_decedent_first_name, string, ALIAS: Decendent first name, ALIAS: Decendent first name.)
* insert ParameterNameType(alias_decedent_last_name, string, ALIAS: Decedent last Name, ALIAS: Decedent Last Name.)
* insert ParameterNameType(alias_decedent_middle_name, string, ALIAS: Decedent Middle Name, ALIAS: Decedent Middle Name.)
* insert ParameterNameType(alias_decedent_name_suffix, string, ALIAS: Decedent Name Suffix, ALIAS: Decedent Name Suffix.)
* insert ParameterNameType(alias_father_surname, string, ALIAS: Father Surname, ALIAS: Father Surname.)
* insert ParameterNameType(alias_social_security_number, string, ALIAS: Social Security Number, ALIAS: Social Security Number.)

RuleSet: BasicParameters
* parameter contains
    rec_yr 0..1 and           //uint
    rec_mo 0..1 and          //uint
    rec_dy 0..1 and          //uint
    cs 0..1 and    // string
    ship 0..1 and // string
    sys_rej 0..1 and // sysrej -- value set of NotRjected and other things
    int_rej 0..1   // one character reject code --  1, 2, 3, 4, 5, 9
* insert ParameterNameType(rec_yr, unsignedInt, R_YR the year that NCHS received the record ,the year that NCHS received the record )
* insert ParameterNameType(rec_mo, unsignedInt, R_MO the month that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(rec_dy, unsignedInt, R_DY the day that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(cs, unsignedInt, CS ACMETRANSAX Coding Status 0-9 ,ACMETRANSAX Coding Status )
* insert ParameterNameType(ship, string, SHIP Needed? NCHS Shipment Number - 3 character, AlphaNumeric NCHS shipment number. Usually the month of death or month of receipts)
* insert ParameterNameType(sys_rej, unsignedInt, SYS_REJ system reject code 0-4, system reject code)
* insert ParameterNameType(int_rej, unsignedInt, INT_REJ internal reject code 1-5 or 9, internal reject code)
* parameter[ship].value[x] ^maxLength = 3







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

Profile: CodingMessage
Parent: Bundle
Id: VRM-CodingMessage
Title: "Coding Message"
Description:   "Message for coding response to death records"
* entry ^slicing.discriminator.type = #pattern
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile named in entry.resource.meta.profile"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
* insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)


Profile: CodingUpdateMessage
Parent: Bundle
Id: VRM-CodingUpdateMessage
Title: "Coding Update Message"
Description:   "Message for updating coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Coding Message Update Header , Coding Message Update Header, CodingMessageUpdateHeader)
* insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
* insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicsCodingMessageParameters)


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
