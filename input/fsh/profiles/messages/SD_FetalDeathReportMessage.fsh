Profile: FetalDeathReportMessage
Parent: Bundle
Id: VRM-FetalDeathReportMessage
Title: "Fetal Death Report Message"
Description:   "Message for reporting fetal death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Header, Fetal Death Report Header, SubmissionHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, MessageBundle)
