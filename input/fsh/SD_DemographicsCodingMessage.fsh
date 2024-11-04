Profile: DemographicsCodingMessage
Parent: Bundle
Id: VRM-DemographicsCodingMessage
Title: "Demographics Coding Message"
Description:   "Message for demographics coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, DemographicsCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, MessageBundle)

Profile: DemographicsCodingUpdateMessage
Parent: Bundle
Id: VRM-DemographicsCodingUpdateMessage
Title: "Demographics Coding Update Message"
Description:   "Message for updating Demographics coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Coding Update Header , Coding Update Header, DemographicsCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Demographic Coded Content Bundle, DemographicCodedContentBundle, MessageBundle)
