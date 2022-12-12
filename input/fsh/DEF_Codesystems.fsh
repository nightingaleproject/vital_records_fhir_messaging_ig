
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
* #http://nchs.cdc.gov/vrdr_submission "VRDR Submission" "Indicates that the payload is aninitial (or retransmission of an unacknowledged) submission of a VRDR Death Certificate
Document"
* #http://nchs.cdc.gov/vrdr_submission_update "VRDR Update" "Indicates this is  an  update  to  a  previously  acknowledged  submission  of  a  VRDR  DeathCertificate Document"
* #http://nchs.cdc.gov/vrdr_submission_void   "VRDR Void" "Indicates this is  void  of  a  VRDR  DeathCertificate Document"
* #http://nchs.cdc.gov/vrdr_acknowledgement  "VRDR Acknowledgement" "Indicates this is  an  acknowledgement"
//* #http://nchs.cdc.gov/vrdr_coding_update     "VRDR Coding Update" "Indicates this is  an  coding update"
* #http://nchs.cdc.gov/vrdr_demographics_coding_update "VRDR Demographics Coding Update" "Indicates that this is an updated demographics coding"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding_update "VRDR Cause of Death Coding Update" "Indicates that this is an updated cause of death coding"
//* #http://nchs.cdc.gov/vrdr_coding "VRDR Coding" "Inidicates that this is an initial coding"
* #http://nchs.cdc.gov/vrdr_demographics_coding "VRDR Demographics Coding" "Indicates that this is an initial demographics coding"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding "VRDR Cause of Death Coding" "Indicates that this is an initial cause of death coding"
* #http://nchs.cdc.gov/vrdr_alias "VRDR Alias" "Indicates that this is an alias for a previously submitted Decedent"
* #http://nchs.cdc.gov/vrdr_extraction_error "VRDR Extraction Error" "Indicates that this is an extraction error"
* #http://nchs.cdc.gov/vrdr_status "VRDR Status" "Indicates that this is a status for a previously submitted Decedent"
* ^experimental = false
