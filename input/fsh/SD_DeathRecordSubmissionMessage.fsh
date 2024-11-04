Profile: DeathRecordSubmissionMessage
Parent: Bundle
Id: VRM-DeathRecordSubmissionMessage
Title: "Death Record Submission Message"
Description:   "Message for submitting death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Header , Header, SubmissionHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Death Message Submission Parameters, Death Record Submission Parameters, MessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, MessageBundle)
* insert BundleEntry(IJERecordBase64, 0, 1, IJE Record encoded in Base64, IJE Record encoded in Base64, Binary)


Profile: DeathRecordUpdateMessage
Parent: Bundle
Id: VRM-DeathRecordUpdateMessage
Title: "Death Record Update Message"
Description:   "Message for updating death records"
* insert CommonBundleStuff
* ^status = #draft
* type  = #message   // first entry in bundle must be MessageHeader
* id 1..1
* timestamp 1..1
* insert BundleEntry(messageHeader, 1, 1, Update Header , Update Header, UpdateHeader)
* insert BundleEntry(deathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(deathRecordCertificate, 1, 1, Death Record Certificate Document, Death Record Certificate Document, MessageBundle)
