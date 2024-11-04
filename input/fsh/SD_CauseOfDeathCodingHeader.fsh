// Only used for death and fetal death

ValueSet: CauseOfDeathCodingURIVS
Id: VRM-CauseOfDeathCodingHeaderURI-vs
Title: "Cause of Death Coding MessageHeader URI Values"
Description: "Cause of Death Coding MessageHeader URI Values"
* MessageHeaderURICS#http://nchs.cdc.gov/vrdr_causeofdeath_coding 
* MessageHeaderURICS#http://nchs.cdc.gov/fd_causeofdeath_coding  
* ^experimental = false

Profile:  CauseOfDeathCodingHeader
Parent: MessageHeader
Id: VRM-CauseOfDeathCodingHeader
Title:  "Cause of Death Coding Header"
Description:   "Cause of Death Coding Header"
* eventUri from CauseOfDeathCodingURIVS (required)
* insert CommonHeaderStuff
* insert HeaderResponseID
* response.identifier ^short = "The value of the MessageHeader.id for the Death or Fetal Death Record message that is being coded"
// * focus only Reference(Bundle )

