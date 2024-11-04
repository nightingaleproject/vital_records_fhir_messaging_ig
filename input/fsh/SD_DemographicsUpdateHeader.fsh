ValueSet: DemographicsCodingUpdateHeaderURIVS
Id: VRM-DemographicsCodingUpdateHeaderURI-vs
Title: "Demographics Coding Update MessageHeader URI Values"
Description: "Demographics Coding Update MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_demographics_coding_update
* MessageHeaderURICS#http://nchs.cdc.gov/fd_demographics_coding_update
* MessageHeaderURICS#http://nchs.cdc.gov/birth_demographics_coding_update
* ^experimental = false

Profile:  DemographicsCodingUpdateHeader
Parent: MessageHeader
Id: VRM-DemographicsCodingUpdateHeader
Title:  "Demographics Coding Update Header"
Description:   "Demographics Coding Update Header"
* eventUri from DemographicsCodingUpdateHeaderURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"