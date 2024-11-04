Profile: CodedCauseOfFetalDeathMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathMessage
Title: "Coded Cause of Fetal Death Message"
Description:   "Message for reporting coded cause of fetal death"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Header, Coded Cause of Fetal Death Header, CauseOfDeathCodingHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, MessageBundle)


Profile: CodedCauseOfFetalDeathUpdateMessage
Parent: Bundle
Id: VRM-CodedCauseOfFetalDeathUpdateMessage
Title: "Coded Cause of Fetal Death Update Message"
Description:   "Message for updating coded cause of fetal death"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Coded Cause of Fetal Death Update Header, Coded Cause of Fetal Death Update Header, CauseOfDeathCodingUpdateHeader)
* insert BundleEntry(fetalDeathRecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(codedCauseOfFetalDeathDocument, 1, 1, Coded Cause of Fetal Death Document, Coded Cause of Fetal Death Document, MessageBundle)
