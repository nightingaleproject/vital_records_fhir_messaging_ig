// Only used for death and fetal death

ValueSet: CauseOfDeathCodingUpdateURIVS
Id: VRM-CauseOfDeathCodingUpdateHeaderURI-vs
Title: "Cause of Death Coding Update MessageHeader URI Values"
Description: "Cause of Death Coding Update MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding_update
* MessageHeaderURICS#http://nchs.cdc.gov/fd_causeofdeath_coding_update
* ^experimental = false

Profile:  CauseOfDeathCodingUpdateHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingUpdateHeader
Title:  "Cause of Death Coding Update Header"
Description:   "Cause of Death Coding Update Header"
* eventUri from CauseOfDeathCodingUpdateURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death or Fetal Death Record message that is being coded"
// * focus only Reference(Bundle )