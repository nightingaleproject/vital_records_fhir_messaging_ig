ValueSet: IndustryOccupationUpdateURIVS
Id: VRM-IndustryOccupationUpdateHeaderURI-vs
Title: "Industry and Occupation Update MessageHeader URI Values"
Description: "Industry and Occupation Update MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_industryoccupation_coding_update
* MessageHeaderURICS#http://nchs.cdc.gov/fd_industryoccupation_coding_update 
* MessageHeaderURICS#http://nchs.cdc.gov/birth_industryoccupation_coding_update


Profile:  IndustryOccupationCodingUpdateHeader
Parent: MessageHeader
Id: VRM-IndustryOccupationCodingUpdateHeader
Title:  "Industy Occupation Coding Update  Header"
Description:   "Industry Occupation Coding Update Header"
* eventUri from IndustryOccupationUpdateURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death Record message that is being coded"
// * focus only Reference(Bundle )