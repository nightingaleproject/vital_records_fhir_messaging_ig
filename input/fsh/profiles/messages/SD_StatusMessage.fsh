Profile: StatusMessage
Parent: Bundle
Id: VRM-StatusMessage
Title: "Status Message"
Description:   "Message for sending status of DeathRecord processing"
* insert CommonBundleStuff
// * insert BundleEntry(brachytherapyTreatmentPhase, 0, *, Brachytherapy Phase Summary, Procedure resource representing one phase in cancer-related brachytherapy radiology procedures., BrachytherapyTreatmentPhase)
* insert BundleEntry(messageHeader, 1, 1, Status Header , Status Header, StatusHeader)
* insert BundleEntry(statusParameters, 1, 1, Status Parameters, Status Parameters, StatusParameters)
