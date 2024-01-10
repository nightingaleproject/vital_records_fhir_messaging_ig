
CodeSystem: StatusCS
Id: VRM-Status-cs
Title: "Status Codes Values"
Description: "Status Codes Values"
* ^caseSensitive = true
* #manualCauseOfDeathCoding "Manual Cause of Death Coding" "The death record has been sent for manual cause of death coding."
* #manualDemographicCoding "Manual Demographic  Coding" "The death record has been sent for manual demographic (race/ethnicity) coding."
// * #terminatedCauseOfDeathCoding "Terminated Cause of Death Coding" "Cause of death coding for this submission has been terminated"
// * #terminatedDemographicCoding "Terminated Demographic  Coding" "Demographic (race/ethnicity) coding for this submission has been terminated."
* #noCodingNeeded_Duplicate "No Coding Needed - Duplicate" "The death record is a duplicate of a previously submitted record, no coding will be performed."
* #manualCodingCanceled_Update "Manual Coding Canceled - Update" "An update has been submitted for a death record that is queued for manual coding.  The manual coding
has been canceled for the original record."
* #manualCodingCanceled_Void "Manual Coding Canceled - Void" "A void request has been received for a death record that is queued for manual coding.  The manual coding
has been canceled for the original record."
* ^experimental = false

ValueSet: StatusVS
Id: VRM-Status-vs
Title: "Status Codes Values"
Description: "Status Codes Values"
* codes from system StatusCS
* ^experimental = false

CodeSystem: MessageHeaderURICS
Id: VRM-MessageHeaderURI-cs
Title: "MessageHeader URI Values"
Description: "MessageHeader URI Values"
* ^caseSensitive = true
* #http://nchs.cdc.gov/vrdr_submission "VRDR Submission" "Indicates that the payload is an initial (or retransmission of an unacknowledged) submission of a VRDR Death Certificate
Document"
* #http://nchs.cdc.gov/vrdr_submission_update "VRDR Update" "Indicates this is  an  update  to  a  previously  acknowledged  submission  of  a  VRDR  DeathCertificate Document"
* #http://nchs.cdc.gov/vrdr_submission_void   "VRDR Void" "Indicates this is  void  of  a  VRDR  DeathCertificate Document"
* #http://nchs.cdc.gov/vrdr_acknowledgement  "VRDR Acknowledgement" "Indicates this is  an  acknowledgement"
//* #http://nchs.cdc.gov/vrdr_coding_update     "VRDR Coding Update" "Indicates this is  an  coding update"
* #http://nchs.cdc.gov/vrdr_demographics_coding_update "VRDR Demographics Coding Update" "Indicates that this is an updated demographics coding"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding_update "VRDR Cause of Death Coding Update" "Indicates that this is an updated cause of death coding"
* #http://nchs.cdc.gov/vrdr_industryoccupation_coding_update "VRDR Industry Occupation Coding Update" "Indicates that this is an updated industry occupation coding"
//* #http://nchs.cdc.gov/vrdr_coding "VRDR Coding" "Inidicates that this is an initial coding"
* #http://nchs.cdc.gov/vrdr_demographics_coding "VRDR Demographics Coding" "Indicates that this is an initial demographics coding"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding "VRDR Cause of Death Coding" "Indicates that this is an initial cause of death coding"
* #http://nchs.cdc.gov/vrdr_industryoccupation_coding "VRDR Industry Occupation Coding" "Indicates that this is an initial industry occupation coding"
* #http://nchs.cdc.gov/vrdr_alias "VRDR Alias" "Indicates that this is an alias for a previously submitted Decedent"
* #http://nchs.cdc.gov/vrdr_extraction_error "VRDR Extraction Error" "Indicates that this is an extraction error"
* #http://nchs.cdc.gov/vrdr_status "VRDR Status" "Indicates that this is a status for a previously submitted Decedent"
* #http://nchs.cdc.gov/bfdr_death "BFDR Death" "Indicates that the payload is an initial submission of a BFDR fetal death report"
* #http://nchs.cdc.gov/bfdr_death_update "BFDR Death Update" "Indicates that the payload is an updated submission of a BFDR fetal death report"
* #http://nchs.cdc.gov/bfdr_birth "BFDR Birth" "Indicates that this is an initial submission of a BFDR birth report"
* #http://nchs.cdc.gov/bfdr_birth_update "BFDR Birth Update" "Indicates that this is an updated submission of a BFDR birth report"
* #http://nchs.cdc.gov/bfdr_causeofdeath "BFDR Cause of Fetal Death" "Indicates that this is an initial fetal cause of death"
* #http://nchs.cdc.gov/bfdr_causeofdeath_update "BFDR Cause of Fetal Death Update" "Indicates that this is an updated fetal cause of death"
* #http://nchs.cdc.gov/bfdr_demographics_coding "BFDR Parental Demographics Coding" "Indicates that this is an initial demographics coding"
* #http://nchs.cdc.gov/bfdr_demographics_coding_update "BFDR Parental Demographics Coding Update" "Indicates that this is an updated demographics coding"
* ^experimental = false

CodeSystem: PayloadVersionCS
Id: Payload-version-cs
Title: "Payload Version Identifier Values"
Description: "Codesystem for Payload Version Identifier Values"
* ^caseSensitive = true
* #VRDR_STU3_0 "VRDRSTU3.0"
* #VRDR_STU2_2 "VRDRSTU2.2"
* #VRDR_STU2_1 "VRDRSTU2.1"
* #VRDR_STU2_0 "VRDRSTU2.0"
* #VRDR_STU1_0 "VRDRSTU1.0"
* #BFDR_STU2_0 "BFDRSTU2.0"
* #BFDR_STU1_1 "BFDRSTU1.1"
* #BFDR_STU1_0 "BFDRSTU1.0"

ValueSet: PayloadVersionVS
Id: Payload-version-vs
Title: "Payload Version Identifier Values"
Description: "Payload Version Identifier Values"
* codes from system PayloadVersionCS
* ^experimental = false