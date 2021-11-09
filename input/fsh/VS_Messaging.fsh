ValueSet: RaceCodesVS
Id: VRDR-Race-vs
Title: "Race Codes Values"
Description: "Race Code Values"
* include codes from system RaceCodesCS


ValueSet: EthnicCodesVS
Id: VRDR-EthnicCodes-vs
Title: "Ethnic Codes Values"
Description: "EthnicCodes Values"
* include codes from system EthnicCodesCS

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

ValueSet: ACMETRANSAXCodingStatusVS
Id: VRDR-ACMETRANSAXCodingStatus-vs
Title: "ACMETRANSAX Coding StatusVS"
Description: "ACMETRANSAX Coding Status from [page 23 ACMETransax Documentation](https://ftp.cdc.gov/pub/HealthStatistics/NCHS/Software/MICAR/DataEntrySoftware/ACMETRANSAX/Documentation/auser.pdf)"
* include codes from system ACMETRANSAXCodingStatusCS
