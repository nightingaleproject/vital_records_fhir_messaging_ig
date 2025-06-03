Profile: MaternalLinkageRequestMessage
Parent: Bundle
Id: VRM-MaternalLinkageRequestMessage
Title: "Maternal Linkage Request Message"
Description:   "Message for requesting maternal linkage"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Header , Header, MaternalLinkageRequestHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)


