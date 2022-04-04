/*
CodeSystem: InternalRejectCodesCS
Id: VRM-InternalRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* ^caseSensitive = true
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


CodeSystem: SystemRejectCodesCS
Id: VRM-SystemRejectCodes-cs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* ^caseSensitive = true
* #ACMEReject "ACMEReject" "ACME Reject"
* #MICARRejectDdictionaryMatch "MICARRejectDictionaryMatch" "MICAR Reject - Dictionary match"
* #MICARRejectRuleApplication "MICARRejectRuleApplication" "MICAR Reject - Rule Application"
* #NotRejected "NotRejected" "Not Rejected"
* #RecordReviewed "RecordReviewed" "Record Reviewed"
*/

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

// CodeSystem: ACMETRANSAXCodingStatusCS
// Id: VRM-ACMETRANSAXCodingStatus-cs
// Title: "ACMETRANSAX Coding StatusCS"
// Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
// * ^caseSensitive = true
// * #0 "0" "0"
// * #1 "1" "1"
// * #2 "2" "2"
// * #3 "3" "3"
// * #4 "4" "4"
// * #5 "5" "5"
// * #6 "6" "6"
// * #7 "7" "7"
// * #8 "8" "8"
// * #9 "9" "9"
