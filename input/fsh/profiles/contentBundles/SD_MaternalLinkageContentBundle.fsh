Profile: MaternalLinkageContentBundle
Parent: Bundle
Id: VRM-maternal-linkage-content-bundle
Title: "Maternal Linkage Content Bundle"
Description: "Maternal Linkage Content Bundle (Bundle): A bundle containing instances of the resources comprising innformation about most recent pregnancy of a decedent."
* insert BundleIdentifiers
* type 1..1
* type only code
* type = #collection (exactly)
* entry.resource 1..1 // each entry must have a resource
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile"
//  RuleSet: BundleSlice(name, min, max, short, def, class)
* insert BundleSlice(  RecentPregnancyParameters,  1, 1,  RecentPregnancyParameters,  RecentPregnancyParameters,  RecentPregnancyParameters)
* insert BundleSlice(  BirthRecordIdentifierChild,  0, *,  BirthRecordIdentifierChild,  BirthRecordIdentifierChild,  BirthRecordIdentifierChild)
* insert BundleSlice(  FetalDeathRecordIdentifier,  0, *,  FetalDeathRecordIdentifier,  FetalDeathRecordIdentifier,  FetalDeathRecordIdentifier)