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

