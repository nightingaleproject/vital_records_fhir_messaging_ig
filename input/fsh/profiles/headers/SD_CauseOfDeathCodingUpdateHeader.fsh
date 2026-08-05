// Only used for death and fetal death
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