
/*
ValueSet: InternalRejectCodesVS
Id: VRDR-InternalRejectCodes-vs
Title: "Internal Reject Codes Values"
Description: "Internal Reject Codes Values"
* include codes from system InternalRejectCodesCS



ValueSet: SystemRejectCodesVS
Id: VRDR-SystemRejectCodes-vs
Title: "System Reject Codes Values"
Description: "System Reject Codes Values"
* include codes from system SystemRejectCodesCS
*/

// ValueSet: DeathMessageHeaderURIVS
// Id: VRDR-DeathMessageHeaderURI-vs
// Title: "DeathMessageHeader URI Values"
// Description: "DeathMessageHeader URI Values"
// * MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission "VRDR Submission"
// * MessageHeaderURICS#http://nchs.cdc.gov/vrdr_submission_update "VRDR Update"


// ValueSet: CodingMessageHeaderURIVS
// Title: "CodingMessageHeader URI Values"
// Description: "CodingMessageHeader URI Values"
// * MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding "VRDR Coding"
// * MessageHeaderURICS#http://nchs.cdc.gov/vrdr_coding_update     "VRDR Coding Update"

/*
ValueSet: ACMETRANSAXCodingStatusVS
Id: VRDR-ACMETRANSAXCodingStatus-vs
Title: "ACMETRANSAX Coding StatusVS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* include codes from system ACMETRANSAXCodingStatusCS
*/

ValueSet: HispanicOriginVS
Id: VRM-HispanicOrigin-vs
Title: "HispanicOrigin Value Set"
Description: "HispanicOrigin from https://www.cdc.gov/nchs/data/dvs/HispanicCodeTitles.pdf"
* include codes from system HispanicOriginCS

ValueSet: RaceCodeVS
Id: VRM-RaceCode-vs
Title: "Race Code VS"
Description: "RaceCode from https://www.cdc.gov/nchs/data/dvs/RaceCodeList.pdf "
* include codes from system RaceCodeCS