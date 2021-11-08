RuleSet: BundleEntry(name, min, max, short, def, class)
* entry contains {name} {min}..{max} MS
* entry[{name}] ^short = "{short}"
* entry[{name}] ^definition = "{def}"
* entry[{name}].resource only {class}

Profile: DeathMessageOutcome
Parent: OperationOutcome
Id: VRDR-DeathMessageOutcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"

CodeSystem: RaceCodesCS
Id: VRDR-Race-cs
Title: "Race Codes Values"
Description: "Race Code Values"
// RACE1E..RACE8EorRACE16C..RACE23CorRACEBRG
* #RACE1E "RACE1E" "RACE1E"
* #RACE2E "RACE2E" "RACE2E"
* #RACE3E "RACE3E" "RACE3E"
* #RACE4E "RACE4E" "RACE4E"
* #RACE5E "RACE5E" "RACE5E"
* #RACE6E "RACE6E" "RACE6E"
* #RACE7E "RACE7E" "RACE7E"
* #RACE8E "RACE8E" "RACE8E"
* #RACE16C "RACE16C" "RACE16C"
* #RACE17C "RACE17C" "RACE17C"
* #RACE18C "RACE18C" "RACE18C"
* #RACE19C "RACE19C" "RACE19C"
* #RACE20C "RACE20C" "RACE20C"
* #RACE21C "RACE21C" "RACE21C"
* #RACE22C "RACE22C" "RACE22C"
* #RACE23C "RACE23C" "RACE23C"

ValueSet: RaceCodesVS
Id: VRDR-Race-vs
Title: "Race Codes Values"
Description: "Race Code Values"
* include codes from system RaceCodesCS

CodeSystem: EthnicCodesCS
Id: VRDR-EthnicCodes-cs
Title: "Ethnic Codes Values"
Description: "EthnicCodes Values"
* #DETHNICE "DETHNICE" "DETHNICE"
* #DETHNIC5C "DETHNIC5C"

ValueSet: EthnicCodesVS
Id: VRDR-EthnicCodes-vs
Title: "Ethnic Codes Values"
Description: "EthnicCodes Values"
* include codes from system EthnicCodesCS

CodeSystem: InternalRejectCodesCS
Id: VRDR-InternalRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* #1 "Reject1" "Reject1"
* #2 "Reject2" "Reject2"
* #3 "Reject3" "Reject3"
* #4 "Reject4" "Reject4"
* #5 "Reject5" "Reject5"
* #6 "Reject6" "Reject6"
* #7 "Reject7" "Reject7"
* #8 "Reject8" "Reject8"
* #9 "Reject9" "Reject9"
* #U "No Code" "No Code"

ValueSet: InternalRejectCodesVS
Id: VRDR-InternalRejectCodes-vs
Title: "Internal Reject Codes Values"
Description: "Internal Reject Codes Values"
* include codes from system InternalRejectCodesCS

CodeSystem: SystemRejectCodesCS
Id: VRDR-SystemRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* #ACMEReject "ACMEReject" "ACME Reject"
* #MICARRejectDdictionaryMatch "MICARRejectDictionaryMatch" "MICAR Reject - Dictionary match"
* #MICARRejectRuleApplication "MICARRejectRuleApplication" "MICAR Reject - Rule Application"
* #NotRejected "NotRejected" "Not Rejected"
* #RecordReviewed "RecordReviewed" "Record Reviewed"

ValueSet: SystemRejectCodesVS
Id: VRDR-SystemRejectCodes-vs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* include codes from system SystemRejectCodesCS

CodeSystem: MessageHeaderURICS
Id: VRDR-MessageHeaderURI-cs
Title: "MessageHeader URI Values"
Description: "MessageHeader URI Values"
* #http://nchs.cdc.gov/vrdrsubmission "VRDR Submission" "Indicates that the payload is aninitial (or retransmission of an unacknowledged) submission of a VRDR Death Certificate
Document"
* #http://nchs.cdc.gov/vrdrsubmissionupdate "VRDR Update" "Indicates this is  an  update  to  a  previously  acknowledged  submission  of  a  VRDR  DeathCertificate Document "
* #http://nchs.cdc.gov/vrdrsubmissionvoid   "VRDR Void" "Indicates this is  void  of  a  VRDR  DeathCertificate Document "
* #http://nchs.cdc.gov/vrdracknowledgement  "VRDR Acknowledgement" "Indicates this is  an  acknowledgement "
* #http://nchs.cdc.gov/vrdrcodingupdate     "VRDR Coding Update" "Indicates this is  an  coding update "
* #http://nchs.cdc.gov/vrdrcoding "VRDR Coding" "Inidicates that this is an initial coding"
* #http://nchs.cdc.gov/vrdralias "VRDR Alias" "Indicates that this is an alias for a previously submitted Decedent"

ValueSet: DeathMessageHeaderURIVS
Id: VRDR-DeathMessageHeaderURI-vs
Title: "DeathMessageHeader URI Values"
Description: "DeathMessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmission "VRDR Submission"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmissionupdate "VRDR Update"


ValueSet: CodingMessageHeaderURIVS
Title: "CodingMessageHeader URI Values"
Description: "CodingMessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrcoding "VRDR Coding"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdrcodingupdate     "VRDR Coding Update"

Profile:  DeathMessageSubmissionHeader
Parent: MessageHeader
Description:   "Death Message Submission Header"
Id: VRDR-DeathMessageSubmissionHeader
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmission (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathRecordUpdateHeader
Parent: MessageHeader
Id: VRDR-DeathRecordUpdateHeader
Description:   "Death Message Update Header"
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathMessageVoidHeader
Parent: MessageHeader
Id: VRDR-DeathMessageVoidHeader
Title:  "Death Message Void Header"
Description:   "Death Message Void Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrsubmissionvoid (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageVoidParameters)

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRDR-CodingMessageHeader
Title:  "Coding Message Header"
Description:   "Death Message Coding Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrcoding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CodingMessageParameters)

Profile:  CodingMessageUpdateHeader
Parent: MessageHeader
Id: VRDR-CodingMessageUpdateHeader
Title:  "Coding Message Update Header"
Description:   "Death Message Update Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrcodingupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(CodingMessageParameters)

Profile:  DeathMessageAliasHeader
Parent: MessageHeader
Id: VRDR-DeathMessageAliasHeader
Title:  "Death Message Alias Header"
Description:   "Death Message Alias Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdralias (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageAliasParameters)

Profile:  AcknowledgementMessageHeader
Parent: MessageHeader
Id: VRDR-AcknowledgementMessageHeader
Title:  "Acknowledgement Message Header"
Description:   "Acknowledgement Message Header"
* eventUri =  MessageHeaderURICS#http://nchs.cdc.gov/vrdracknowledgement (exactly)
* insert CommonHeaderStuff
* response.identifier 1..1
* response.identifier ^short = "The value of the MessageHeader.id for the message that is being acknowledged"
* response.code = #ok (exactly)
* focus only Reference(DeathMessageParameters)

Profile:  ExtractionErrorHeader
Parent: MessageHeader
Id: VRDR-ExtractionErrorHeader
Title:  "Extraction Error Header"
Description:   "Extraction Error Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdrextractionerror (exactly)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.code = #fatal-error
* response.details 1..1
* response.details only Reference(DeathMessageOutcome)
* focus only Reference(DeathMessageParameters)



RuleSet: ParameterName(name,short,def)
* parameter[{name}].name = "{name}"
* parameter[{name}].name = "{name}"
* parameter[{name}].name = "{name}"
* parameter[{name}] ^short = "{short}"
* parameter[{name}] ^definition = "{def}"

RuleSet: ParameterNameType(name, type, short, def)
* insert ParameterName({name},{short}, {def})
* parameter[{name}].value[x] only {type}
* parameter[{name}].value[x] 1..1
* parameter[{name}].resource 0..0
* parameter[{name}].part 0..0

RuleSet: BaseMessageParameterSlices
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
* insert ParameterNameType(cert_no, unsignedInt,death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"
* insert ParameterNameType(block_count, unsignedInt, number of records voided, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of 1 is assumed meaning only a single record will be voided. )


Profile:  DeathMessageParameters
Parent: Parameters
Id: VRDR-DeathMessageParameters
Description:   "Death Message Parameters"
Title:  "Base parameter set for most Messages"
* id MS
// jurisdiction_id
// cert_no
// death_year
// state_auxiliary_id
// block_count -- only for void messages with a block_count
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 1..1 and
    cert_no 1..1 and
    death_year 1..1 and
    state_auxiliary_id 0..1 MS and
    block_count 0..1 MS   // only for void messages
* insert BaseMessageParameterSlices

Profile: DeathMessageVoidParameters
Parent: DeathMessageParameters
Id: VRDR-DeathMessageVoidParameters
Description:   "Parameters for a Void Death Message"
//* parameter contains
//    block_count 1..1
//* insert ParameterNameType(block_count, unsignedInt, number of records to void, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of `1` is assumed meaning only a single record will be voided.)

Profile: DeathMessageAliasParameters
Parent: DeathMessageParameters
Id: VRDR-DeathMessageAliasParameters
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



CodeSystem: ACMETRANSAXCodingStatusCS
Id: VRDR-ACMETRANSAXCodingStatus-cs
Title: "ACMETRANSAX Coding StatusCS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* #0 "0" "0"
* #1 "1" "1"
* #2 "2" "2"
* #3 "3" "3"
* #4 "4" "4"
* #5 "5" "5"
* #6 "6" "6"
* #7 "7" "7"
* #8 "8" "8"
* #9 "9" "9"


ValueSet: ACMETRANSAXCodingStatusVS
Id: VRDR-ACMETRANSAXCodingStatus-vs
Title: "ACMETRANSAX Coding StatusVS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* include codes from system ACMETRANSAXCodingStatusCS

Profile:  CodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CodingMessageParameters
Title:  "Coding Message Parameters"
Description:   "Parameters for a Coding Message"

* parameter contains
    rec_yr 0..1 and           //uint
    rec_mo 0..1 and          //uint
    rec_dy 0..1 and          //uint
    cs 0..1 and    // codeable
    ship 0..1 and // string
    sys_rej 0..1 and // sysrej -- value set of NotRjected and other things
    int_rej 0..1 and  // one character reject code --  1, 2, 3, 4, 5, 9
    ethnicity 0..1 and // part contains name=DETHNICE, codeable
    race 0..* and  // part contains list with name=RACE1E, etc and codeable
    underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..1 and // part contains list of codeable concepts
    entity_axis_code 0..* and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    other_specified_place 0..1 // string
* insert ParameterNameType(rec_yr, unsignedInt,the year that NCHS received the record ,the year that NCHS received the record )
* insert ParameterNameType(rec_mo, unsignedInt, the month that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(rec_dy, unsignedInt, the day that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(cs, CodeableConcept, ACMETRANSAX Coding Status ,ACMETRANSAX Coding Status )
* parameter[cs].value[x] from ACMETRANSAXCodingStatusVS (required)
* insert ParameterNameType(ship, string, NCHS Shipment Number, AlphaNumeric NCHS shipment number. Usually the month of death or month of receipts)
* insert ParameterNameType(sys_rej, string, system reject code, system reject code)
* parameter[sys_rej].value[x] from  SystemRejectCodesVS (required)
* insert ParameterNameType(int_rej, string, internal reject code, internal reject code)
* insert ParameterName(ethnicity, ethnicity, ethnicity)
* insert ParameterName(race, race, race)
* insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
* parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterName(record_cause_of_death, Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, entity axis code, entity axis code)
* insert ParameterNameType(manner, string, Manner of Death, Manner of Death)
* insert ParameterNameType(injpl, string, Injury Place, Injury Place)
* insert ParameterNameType(other_specified_place, string, Other specified place, Other specified place)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[ethnicity].part.name only string
* parameter[ethnicity].part.name from EthnicCodesVS (required)
* parameter[ethnicity].part.value[x] only CodeableConcept // bind to value set
* parameter[race].part.name only string
* parameter[race].part.name from RaceCodesVS (required)
* parameter[race].part.value[x] only unsignedInt
* parameter[record_cause_of_death].part ^slicing.discriminator.type = #value
* parameter[record_cause_of_death].part ^slicing.discriminator.path = "name"
* parameter[record_cause_of_death].part ^slicing.rules = #closed
* parameter[record_cause_of_death].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[record_cause_of_death].part contains
      coding 1..*
* parameter[record_cause_of_death].part[coding].value[x] only CodeableConcept // bind to value set
* parameter[record_cause_of_death].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].part[coding].name = "coding"

* parameter[entity_axis_code].part ^slicing.discriminator.type = #value
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #closed
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      coding 1..*
* parameter[entity_axis_code].part[lineNumber] ^definition = "containing a value between 1 and 6 that codes the line number of the death certificate that corresponds to the axis entry"
* parameter[entity_axis_code].part[lineNumber] ^short = "line number"
* parameter[entity_axis_code].part[coding] ^definition = "Coding of the cause of death"
* parameter[entity_axis_code].part[coding] ^short = "Coding of the cause of death"
* parameter[entity_axis_code].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code].part[lineNumber].value[x] only string
* parameter[entity_axis_code].part[coding].name = "coding"
* parameter[entity_axis_code].part[coding].value[x] only CodeableConcept
* parameter[entity_axis_code].part[coding].valueCodeableConcept.text 0..0
* parameter[entity_axis_code].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].value[x] 0..0
* parameter[record_cause_of_death].resource 0..0
* parameter[entity_axis_code].value[x] 0..0
* parameter[entity_axis_code].resource 0..0
* parameter[ethnicity].value[x] 0..0
* parameter[ethnicity].resource 0..0
* parameter[race].value[x] 0..0
* parameter[race].resource 0..0


Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRDR-DeathRecordSubmissionMessage
Title: "Death Record Submission Message "
Description:   "Message for submitting death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageSubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordUpdateMessage
Parent: Bundle
Id: VRDR-DeathRecordUpdateMessage
Title: "Death Record Update Message"
Description:   "Message for updating death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathRecordUpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, DeathMessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, DeathCertificateDocument)


Profile: DeathRecordVoidMessage
Parent: Bundle
Id: VRDR-DeathRecordVoidMessage
Title: "Death Record Void Message "
Description:   "Message for voiding death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageVoidHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Void Parameters, Death Record Void Parameters, DeathMessageVoidParameters)

Profile: DeathRecordAliasMessage
Parent: Bundle
Id: VRDR-DeathRecordAliasMessage
Title: "Death Record VoAliasid Message "
Description:   "Message for aliasing death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageAliasHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Alias Parameters, Death Record Aias Parameters, DeathMessageAliasParameters)

Profile: CodingMessage
Parent: Bundle
Id: VRDR-CodingMessage
Title: "Coding Message"
Description:   "Message for coding response to death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(codingParameters, 1, 1, Coding Message Parameters, Coding Parameters, CodingMessageParameters)


Profile: CodingUpdateMessage
Parent: Bundle
Id: VRDR-CodingUpdateMessage
Title: "Coding Update Message"
Description:   "Message for updating coding response to death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, CodingMessageUpdateHeader)
* insert BundleEntry(codingParameters, 1, 1, Coding Message Parameters, Coding Parameters, CodingMessageParameters)


Profile: AcknowledgementMessage
Parent: Bundle
Id: VRDR-AcknowledgementMessage
Title: "Acknowledgement Message"
Description:   "Acknowledgement Message"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Acknowledgement Message Header , Acknowledgement Message Header, AcknowledgementMessageHeader)
* insert BundleEntry(acknowledgementParameters, 1, 1, Acknowledgement Message Parameters, Acknowledgement Parameters, DeathMessageParameters)


Profile: ExtractionErrorMessage
Parent: Bundle
Id: VRDR-ExtractionErrorMessage
Title: "Extraction Error Message"
Description:   "Message for Errors during content extraction"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Extraction Error Message Header , Extraction Error Message Header, ExtractionErrorHeader)
* insert BundleEntry(extractionErrorParameters, 0, 1, Extraction Error Message Parameters, Extraction Error Parameters, DeathMessageParameters)
* insert BundleEntry(extractionErrorOutcome, 1, 1, Extraction Error Operation Outcome, Extraction Error Operation Outcome, DeathMessageOutcome)


RuleSet: CommonBundleStuff
* ^status = #draft
* type  = #message
* id 1..1
* timestamp 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the sliced element"

RuleSet: CommonHeaderStuff
* eventUri 1..1
* destination 1..1
* source 1..1
* focus 1..1
* id 1..1