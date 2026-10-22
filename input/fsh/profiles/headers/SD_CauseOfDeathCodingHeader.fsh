// Only used for death and fetal death
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

