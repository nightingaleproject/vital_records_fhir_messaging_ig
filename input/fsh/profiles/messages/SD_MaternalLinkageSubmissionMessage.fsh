Profile: MaternalLinkageSubmissionMessage
Parent: Bundle
Id: VRM-MaternalLinkageSubmissionMessage
Title: "Maternal Linkage Submission Message"
Description:   "Message for submitting maternal linkage"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Header , Header, SubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)
* insert BundleEntry(maternalLinkageContentBundle, 1, 1, Maternal Linkage Content Bundle, Maternal Linkage Content Bundle, MaternalLinkageContentBundle)


