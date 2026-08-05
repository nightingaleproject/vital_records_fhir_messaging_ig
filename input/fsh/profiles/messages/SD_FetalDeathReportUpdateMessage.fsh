Profile: FetalDeathReportUpdateMessage
Parent: Bundle
Id: VRM-FetalDeathReportUpdateMessage
Title: "Fetal Death Report Message"
Description:   "Message for updating fetal death records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Fetal Death Report Update Header, Fetal Death Report Update Header, UpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(fetalDeathReportDocument, 1, 1, Fetal Death Report Document, Fetal Death Report Document, MessageBundle)
