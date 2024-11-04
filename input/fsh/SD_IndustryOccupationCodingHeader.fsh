ValueSet: IndustryOccupationURIVS
Id: VRM-IndustryOccupationHeaderURI-vs
Title: "Industry and Occupation MessageHeader URI Values"
Description: "Industry and Occupation MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_industryoccupation_coding
* MessageHeaderURICS#http://nchs.cdc.gov/fd_industryoccupation_coding 
* MessageHeaderURICS#http://nchs.cdc.gov/birth_industryoccupation_coding
* ^experimental = false

Profile:  IndustryOccupationCodingHeader
Parent: MessageHeader
Id: VRM-IndustryOccupationCodingHeader
Title:  "Industry Occupation Coding Header"
Description:   "Industry Occupation Coding Header"
* eventUri from IndustryOccupationURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )

