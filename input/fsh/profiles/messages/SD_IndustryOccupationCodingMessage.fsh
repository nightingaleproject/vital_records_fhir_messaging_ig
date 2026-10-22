Profile: IndustryOccupationCodingMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingMessage
Title: "Industry Occupation Coding Message"
Description:   "Message for industry occupation coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Message Header , Message Header, IndustryOccupationCodingHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, Bundle )
