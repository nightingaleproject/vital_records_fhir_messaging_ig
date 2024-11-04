Profile: BirthReportMessage
Parent: Bundle
Id: VRM-BirthReportMessage
Title: "Birth Report Message"
Description:   "Message for reporting birth records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Header, Birth Report Header, SubmissionHeader)
* insert BundleEntry(birthReportParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(birthReportDocument, 1, 1, Birth Report Document, Birth Report Document, MessageBundle)


Profile: BirthReportUpdateMessage
Parent: Bundle
Id: VRM-BirthReportUpdateMessage
Title: "Birth Report Update Message"
Description:   "Message for updating birth records"
* insert CommonBundleStuff
* insert BundleEntry(messageHeader, 1, 1, Birth Report Update Header, Birth Report Update Header, UpdateHeader)
* insert BundleEntry(birthReportParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
* insert BundleEntry(birthReportDocument, 1, 1, Birth Report Document, Birth Report Document, MessageBundle)
