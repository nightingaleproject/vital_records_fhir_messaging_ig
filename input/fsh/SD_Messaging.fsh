

Profile: DeathMessageOutcome
Parent: OperationOutcome
Id: VRDR-DeathMessageOutcome
Title:  "Outcome Profile"
Description: "Outcome profile to support profile-based slicing of bundles"


Profile:  DeathMessageSubmissionHeader
Parent: MessageHeader
Description:   "Death Message Submission Header"
Id: VRDR-DeathMessageSubmissionHeader
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathRecordUpdateHeader
Parent: MessageHeader
Id: VRDR-DeathRecordUpdateHeader
Description:   "Death Message Update Header"
Title:  "Death Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submissionupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathCertificateDocument)

Profile:  DeathMessageVoidHeader
Parent: MessageHeader
Id: VRDR-DeathMessageVoidHeader
Title:  "Death Message Void Header"
Description:   "Death Message Void Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submissionvoid (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageVoidParameters)

Profile:  CodingMessageHeader
Parent: MessageHeader
Id: VRDR-CodingMessageHeader
Title:  "Coding Message Header"
Description:   "Death Message Coding Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters or DemographicCodingMessageParameters )

Profile:  CodingMessageUpdateHeader
Parent: MessageHeader
Id: VRDR-CodingMessageUpdateHeader
Title:  "Coding Message Update Header"
Description:   "Death Message Update Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_codingupdate (exactly)
* insert CommonHeaderStuff
* focus only Reference(CauseOfDeathCodingMessageParameters or DemographicCodingMessageParameters)

Profile:  DeathMessageAliasHeader
Parent: MessageHeader
Id: VRDR-DeathMessageAliasHeader
Title:  "Death Message Alias Header"
Description:   "Death Message Alias Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_alias (exactly)
* insert CommonHeaderStuff
* focus only Reference(DeathMessageAliasParameters)

Profile:  AcknowledgementMessageHeader
Parent: MessageHeader
Id: VRDR-AcknowledgementMessageHeader
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
Id: VRDR-ExtractionErrorHeader
Title:  "Extraction Error Header"
Description:   "Extraction Error Message Header"
* eventUri = MessageHeaderURICS#http://nchs.cdc.gov/vrdr_extractionerror  (exactly)
* insert CommonHeaderStuff
* response.identifier ^short = "The value of the MessageHeader.id for the message with errors"
* response.code = #fatal-error
* response.details 1..1
* response.details only Reference(DeathMessageOutcome)
* focus only Reference(DeathMessageParameters)

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
    jurisdiction_id 0..1 and
    cert_no 0..1 and
    death_year 0..1 and
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

RuleSet: BasicParameters
* parameter contains
    rec_yr 0..1 and           //uint
    rec_mo 0..1 and          //uint
    rec_dy 0..1 and          //uint
    cs 0..1 and    // codeable
    ship 0..1 and // string
    sys_rej 0..1 and // sysrej -- value set of NotRjected and other things
    int_rej 0..1   // one character reject code --  1, 2, 3, 4, 5, 9
* insert ParameterNameType(rec_yr, unsignedInt,the year that NCHS received the record ,the year that NCHS received the record )
* insert ParameterNameType(rec_mo, unsignedInt, the month that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(rec_dy, unsignedInt, the day that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(cs, CodeableConcept, ACMETRANSAX Coding Status ,ACMETRANSAX Coding Status )
* parameter[cs].value[x] from ACMETRANSAXCodingStatusVS (required)
* insert ParameterNameType(ship, string, NCHS Shipment Number, AlphaNumeric NCHS shipment number. Usually the month of death or month of receipts)
* insert ParameterNameType(sys_rej, string, system reject code, system reject code)
* parameter[sys_rej].value[x] from  SystemRejectCodesVS (required)
* insert ParameterNameType(int_rej, string, internal reject code, internal reject code)

/*
Profile:  CodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CodingMessageParameters
Title:  "Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* insert BasicParameters
* parameter contains
    ethnicity 0..1 and // part contains name=DETHNICE, codeable
    race 0..* and  // part contains list with name=RACE1E, etc and codeable
    // underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..1 and // part contains list of codeable concepts
    entity_axis_code 0..20 and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    other_specified_place 0..1 // string
* insert ParameterName(ethnicity, ethnicity, ethnicity)
* insert ParameterName(race, race, race)
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterName(record_cause_of_death, Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, entity axis code, entity axis code)
* insert ParameterNameType(manner, string, Manner of Death, Manner of Death)
* insert ParameterNameType(injpl, string, Injury Place, Injury Place)
* insert ParameterNameType(other_specified_place, string, Other specified place, Other specified place)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[ethnicity].part.name only string
* parameter[ethnicity].part.name from EthnicCodesVS (required)
* parameter[ethnicity].part.value[x] only string // bind to value set
* parameter[ethnicity].part.value[x] from HispanicOriginVS
* parameter[race].part.name only string
* parameter[race].part.name from RaceCodesVS (required)
* parameter[race].part.value[x] only string
* parameter[race].part.value[x] from RaceCodeListVS (required)
* parameter[record_cause_of_death].part ^slicing.discriminator.type = #value
* parameter[record_cause_of_death].part ^slicing.discriminator.path = "name"
* parameter[record_cause_of_death].part ^slicing.rules = #closed
* parameter[record_cause_of_death].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[record_cause_of_death].part contains
      coding 1..20
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
*/
Profile:  DemographicCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-DemographicCodingMessageParameters
Title:  "Demographic Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* insert BasicParameters
* parameter contains
     ethnicity 0..1 and // part contains name=DETHNICE, codeable
     race 1..*   // part contains list with name=RACE1E, etc and codeable
* insert ParameterName(ethnicity, ethnicity, ethnicity)
* insert ParameterName(race, race, race)
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[ethnicity].part.name only string
* parameter[ethnicity].part.name from EthnicCodesVS (required)
* parameter[ethnicity].part.value[x] only Coding // bind to value set
* parameter[ethnicity].part.value[x] from HispanicOriginVS (required)
* parameter[race].part.name only string
* parameter[race].part.name from RaceCodesVS (required)
* parameter[race].part.value[x] only Coding
* parameter[race].part.value[x] from RaceCodeListVS (required)
* parameter[ethnicity].value[x] 0..0
* parameter[ethnicity].resource 0..0
* parameter[race].value[x] 0..0
* parameter[race].resource 0..0



Profile:  CauseOfDeathCodingMessageParameters
Parent: DeathMessageParameters
Id: VRDR-CauseOfDeathCodingMessageParameters
Title:  "Cause of Death Coding Message Parameters"
Description:   "Parameters for a Coding Message"
* insert BasicParameters
* parameter contains
     // underlying_cause_of_death 0..1 and // icd10
    record_cause_of_death 0..1 and // part contains list of codeable concepts
    entity_axis_code 0..20 and // multiple parameters, each contains - part contains linenumber, codeable
    manner 0..1 and // string
    injpl 0..1 and   // string
    other_specified_place 0..1 // string
// * insert ParameterNameType(underlying_cause_of_death, CodeableConcept, Underlying Cause of Death, Underlying Cause of Death)
// * parameter[underlying_cause_of_death].valueCodeableConcept.coding.system = $icd-10
* insert ParameterName(record_cause_of_death, Recorded Cause of Death, Recorded Cause of Death)
* insert ParameterName(entity_axis_code, entity axis code, entity axis code)
* insert ParameterNameType(manner, string, Manner of Death, Manner of Death)
* insert ParameterNameType(injpl, string, Injury Place, Injury Place)
* insert ParameterNameType(other_specified_place, string, Other specified place, Other specified place)
* parameter[int_rej].value[x] from InternalRejectCodesVS (required)
* parameter[record_cause_of_death].part ^slicing.discriminator.type = #value
* parameter[record_cause_of_death].part ^slicing.discriminator.path = "name"
* parameter[record_cause_of_death].part ^slicing.rules = #closed
* parameter[record_cause_of_death].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[record_cause_of_death].part contains
      coding 1..20
// * parameter[record_cause_of_death].part[coding].value[x] only CodeableConcept // bind to value set
// * parameter[record_cause_of_death].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].part[coding].name = "coding"
* parameter[record_cause_of_death].part[coding].value[x] only string
* parameter[record_cause_of_death] ^short = "Coding of the record axis cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part ^slicing.discriminator.type = #value
* parameter[entity_axis_code].part ^slicing.discriminator.path = "name"
* parameter[entity_axis_code].part ^slicing.rules = #closed
* parameter[entity_axis_code].part ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter[entity_axis_code].part contains
      lineNumber 1..1 and
      coding 1..*
* parameter[entity_axis_code].part[lineNumber] ^definition = "containing a value between 1 and 6 that codes the line number of the death certificate that corresponds to the axis entry"
* parameter[entity_axis_code].part[lineNumber] ^short = "line number"
* parameter[entity_axis_code].part[coding] ^definition = "Coding of the cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part[coding] ^short = "Coding of the cause of death in TRANSAX dialect of ICD10"
* parameter[entity_axis_code].part[lineNumber].name = "lineNumber"
* parameter[entity_axis_code].part[lineNumber].value[x] only string
* parameter[entity_axis_code].part[coding].name = "coding"
* parameter[entity_axis_code].part[coding].value[x] only string
// * parameter[entity_axis_code].part[coding].value[x] only CodeableConcept
// * parameter[entity_axis_code].part[coding].valueCodeableConcept.text 0..0
// * parameter[entity_axis_code].part[coding].valueCodeableConcept.coding.system = $icd-10
* parameter[record_cause_of_death].value[x] 0..0
* parameter[record_cause_of_death].resource 0..0
* parameter[entity_axis_code].value[x] 0..0
* parameter[entity_axis_code].resource 0..0


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
Title: "Death Record Alias Message "
Description:   "Message for aliasing death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Message Header , Message Header, DeathMessageAliasHeader)
* insert BundleEntry(aliasParameters, 1, 1, Death Message Alias Parameters, Death Record Aias Parameters, DeathMessageAliasParameters)

Profile: CodingMessage
Parent: Bundle
Id: VRDR-CodingMessage
Title: "Coding Message"
Description:   "Message for coding response to death records"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
* insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicCodingMessageParameters)


Profile: CodingUpdateMessage
Parent: Bundle
Id: VRDR-CodingUpdateMessage
Title: "Coding Update Message"
Description:   "Message for updating coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, CodingMessageHeader)
* insert BundleEntry(cod, 0, 1, Cause of Death Parameters, Cause of Death Parameters, CauseOfDeathCodingMessageParameters )
* insert BundleEntry(dem, 0, 1, Demographic  Parameters, Demographic Parameters, DemographicCodingMessageParameters)


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
