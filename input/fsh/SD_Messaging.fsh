












// Profile: ParentalDemographicsCodingMessage
// Parent: Bundle
// Id: VRM-ParentalDemographicsCodingMessage
// Title: "Parental Demographics Message"
// Description:   "Message for reporting parental demographics"
// * insert CommonBundleStuff
// * insert BundleEntry(messageHeader, 1, 1, Parental Demographics Header, Parental Demographics Header, DemographicsCodingHeader)
// * insert BundleEntry(RecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
// * insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, MessageBundle)


// Profile: ParentalDemographicsCodingUpdateMessage
// Parent: Bundle
// Id: VRM-ParentalDemographicsCodingUpdateMessage
// Title: "Parental Demographics Update Message"
// Description:   "Message for updating parental demographics"
// * insert CommonBundleStuff
// * insert BundleEntry(messageHeader, 1, 1, Parental Demographicsh Update Header, Parental Demographics Update Header, DemographicsCodingUpdateHeader)
// * insert BundleEntry(RecordParameters, 1, 1, Submission Parameters, Submission Parameters, MessageParameters)
// * insert BundleEntry(parentalDemographicsDocument, 1, 1, Parental Demographics Document, Parental Demographics Document, MessageBundle)




Profile: MessageBundle
Parent: Bundle
Id: VRM-MessageBundle
Title: "Placeholder Profile for profile-based slicing"
Description:   "Placeholder for profile-based slicing"