Profile: IndustryOccupationCodingUpdateMessage
Parent: Bundle
Id: VRM-IndustryOccupationCodingUpdateMessage
Title: "Industry Occupation Coding Update Message"
Description:   "Message for updating industry occupation coding response to death records"
* insert CommonBundleStuff
* insert BundleEntry(header, 1, 1, Industry Occupation Coding Update Header , Industry Occupation Coding Update Header, IndustryOccupationCodingUpdateHeader)
* insert BundleEntry(msgpar, 1, 1, Message Parameters , Message Parameters, MessageParameters)
* insert BundleEntry(codedcontentbundle, 1, 1, Industry Occupation Coded Content Bundle, IndustryOccupationCodedContentBundle, MessageBundle)

