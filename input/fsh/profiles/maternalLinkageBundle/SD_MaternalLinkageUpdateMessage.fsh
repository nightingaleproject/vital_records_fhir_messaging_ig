Profile: MaternalLinkageUpdateMessage
Parent: Bundle
Id: VRM-MaternalLinkageUpdateMessage
Title: "Maternal Linkage Update Message"
Description:   "Message for update maternal linkage"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Header , Header, MaternalLinkageUpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)
* insert BundleEntry(maternalLinkageContentBundle, 1, 1, Maternal Linkage Content Bundle, Maternal Linkage Content Bundle, MaternalLinkageContentBundle)
