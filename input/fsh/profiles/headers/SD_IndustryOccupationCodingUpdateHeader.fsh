
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