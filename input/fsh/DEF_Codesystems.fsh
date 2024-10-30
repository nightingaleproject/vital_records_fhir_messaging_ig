
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
* #http://nchs.cdc.gov/vrdr_alias "VRDR Alias" "Indicates that this is an alias for a previously submitted death report"
* #http://nchs.cdc.gov/vrdr_acknowledgement  "VRDR Acknowledgement" "Indicates this is  an  acknowledgement of a death report"
* #http://nchs.cdc.gov/fd_acknowledgement  "Fetal Acknowledgement" "Indicates this is an  acknowledgement for a Fetal Death report"
* #http://nchs.cdc.gov/birth_acknowledgement  "VRDR Acknowledgement" "Indicates this is  an  acknowledgement for a birth report"
* #http://nchs.cdc.gov/vrdr_submission "VRDR Submission" "Indicates that the payload is an initial (or retransmission of an unacknowledged) submission of a death report"
* #http://nchs.cdc.gov/vrdr_submission_update "VRDR Update" "Indicates this is  an  update  to  a  previously  acknowledged  submission  of  a  death report"
* #http://nchs.cdc.gov/birth_submission "Birth Submission" "Indicates that this is an initial submission of a BFDR birth report"
* #http://nchs.cdc.gov/birth_submission_update "Birth Update" "Indicates that this is an updated submission of a birth report"
* #http://nchs.cdc.gov/fd_submission "Fetal Death Submission" "Indicates that the payload is an initial submission of a  fetal death report"
* #http://nchs.cdc.gov/fd_submission_update "Fetal Death Update" "Indicates that the payload is an updated submission of a  fetal death report"
* #http://nchs.cdc.gov/vrdr_submission_void   "VRDR Void" "Indicates this is  void  of  a  death report"
* #http://nchs.cdc.gov/fd_submission_void   "Fetal Death Submission Void" "Indicates this is  void  of  a  fetal death report"
* #http://nchs.cdc.gov/birth_submission_void "Birth Submission Void" "Indicates that this is void of a submitted  birth report"
* #http://nchs.cdc.gov/vrdr_demographics_coding "VRDR Demographics Coding" "Indicates that this is an initial demographics coding of a death report"
* #http://nchs.cdc.gov/vrdr_demographics_coding_update "VRDR Demographics Coding Update" "Indicates that this is an updated demographics coding of a death report"
* #http://nchs.cdc.gov/birth_demographics_coding "Birth Parental Demographics Coding" "Indicates that this is an initial demographics coding of a birth report"
* #http://nchs.cdc.gov/birth_demographics_coding_update "Bith Parental Demographics Coding Update" "Indicates that this is an updated demographics coding of a birth report"
* #http://nchs.cdc.gov/fd_demographics_coding "Fetal Death Parental Demographics Coding" "Indicates that this is an initial demographics coding of a fetal death report"
* #http://nchs.cdc.gov/fd_demographics_coding_update "Fetal Death Parental Demographics Coding Update" "Indicates that this is an updated demographics coding of a fetal death report"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding "VRDR Cause of Death Coding" "Indicates that this is an initial cause of death coding of a death report"
* #http://nchs.cdc.gov/vrdr_causeofdeath_coding_update "VRDR Cause of Death Coding Update" "Indicates that this is an updated cause of death coding"
* #http://nchs.cdc.gov/fd_causeofdeath_coding "Cause of Fetal Death Submission" "Indicates that this is an initial fetal cause of death"
* #http://nchs.cdc.gov/fd_causeofdeath_coding_update "Cause of Fetal Death Update" "Indicates that this is an updated fetal cause of death"
* #http://nchs.cdc.gov/vrdr_industryoccupation_coding "VRDR Industry Occupation Coding" "Indicates that this is an initial industry occupation coding"
* #http://nchs.cdc.gov/vrdr_industryoccupation_coding_update "VRDR Industry Occupation Coding Update" "Indicates that this is an updated industry occupation coding"
* #http://nchs.cdc.gov/fd_industryoccupation_coding "Fetal Death Industry Occupation Coding" "Indicates that this is an initial industry occupation coding of the mother on a fetal death report"
* #http://nchs.cdc.gov/fd_industryoccupation_coding_update "Fetal Death Industry Occupation Coding Update" "Indicates that this is an updated industry occupation coding of the mother on a fetal death report"
* #http://nchs.cdc.gov/birth_industryoccupation_coding "Birth Industry Occupation Coding" "Indicates that this is an initial industry occupation coding of the mother on a birth report"
* #http://nchs.cdc.gov/birth_industryoccupation_coding_update "Birth  Industry Occupation Coding Update" "Indicates that this is an updated industry occupation coding of the mother on a birth report"
* #http://nchs.cdc.gov/vrdr_extraction_error "VRDR Extraction Error" "Indicates that this is an extraction error on a death report"
* #http://nchs.cdc.gov/fd_extraction_error "Fetal Death Extraction Error" "Indicates that this is an extraction error for a Fetal Death report"
* #http://nchs.cdc.gov/birth_extraction_error "Birth Extraction Error" "Indicates that this is an extraction error for a Birth report"
* #http://nchs.cdc.gov/vrdr_status "VRDR Status" "Indicates that this is a status for a previously submitted death report"
* #http://nchs.cdc.gov/fd_status "Fetal Death Status" "Indicates that this is a status for a previously submitted Fetal Death Record"
* #http://nchs.cdc.gov/birth_status "Birth Status" "Indicates that this is a status for a previously submitted birth report"
* ^experimental = false


CodeSystem: PayloadVersionCS
Id: Payload-version-cs
Title: "Payload Version Identifier Values"
Description: "Codesystem for Payload Version Identifier Values"
* ^caseSensitive = true
* #VRDR_STU3_0 "VRDRSTU3.0" "VRDR STU3.0"
* #VRDR_STU2_2 "VRDRSTU2.2" "VRDR STU2.2"
* #VRDR_STU2_1 "VRDRSTU2.1" "VRDR STU2.1"
* #VRDR_STU2_0 "VRDRSTU2.0" "VRDR STU2.0"
* #VRDR_STU1_0 "VRDRSTU1.0" "VRDR STU1.0"
* #BFDR_STU2_0 "BFDRSTU2.0" "BFDR STU2.0"
* #BFDR_STU1_1 "BFDRSTU1.1" "BFDR STU1.1"
* #BFDR_STU1_0 "BFDRSTU1.0" "BFDR STU1.0"
* ^experimental = false

ValueSet: PayloadVersionVS
Id: Payload-version-vs
Title: "Payload Version Identifier Values"
Description: "Payload Version Identifier Values"
* codes from system PayloadVersionCS
* ^experimental = false