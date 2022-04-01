Profile: CodedContentBundle
Parent: Bundle
Id: VRM-coded-content-bundle
Title: "Coded Content Bundle"
Description: "A bundle containing instances of the resources comprising coded content."
* insert RequireMetaProfile(CodedContentBundle)
* identifier ^short = "Death Certificate Number"
* identifier ^definition = "A unique value used by the NCHS to identify a death record. The NCHS uniquely identifies death records by combining three concepts: the year of death (as a four digit number), the jurisdiction of death (as a two character jurisdiction identifier), and the death certificate number assigned by the jurisdiction (a number with up to six digits, left padded with zeros)."
* identifier.value ^maxLength = 6
* type 1..1
* type only code
* type = #collection (exactly)
// * entry.resource 1..1 MS // each entry must have a resource
// * entry ^slicing.discriminator.type = #profile
// * entry ^slicing.discriminator.path = "resource"
// * entry ^slicing.rules = #open
// * entry ^slicing.description = "Slicing based on the profile"
// * insert BundleSlice(  AutomatedUnderlyingCauseOfDeath,  0, 1,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath,  AutomatedUnderlyingCauseOfDeath)
// * insert BundleSlice(  ManualUnderlyingCauseOfDeath,  0, 1,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath,  ManualUnderlyingCauseOfDeath)
// * insert BundleSlice(  CodedRaceAndEthnicity,  0, 1,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity,  CodedRaceAndEthnicity)
// * insert BundleSlice(  EntityAxisCauseOfDeath,  0, 20,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath,  EntityAxisCauseOfDeath)
// * insert BundleSlice(  RecordAxisCauseOfDeath,  0, 20,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath,  RecordAxisCauseOfDeath)
// * insert BundleSlice(  PlaceOfInjury,  0, 1,  PlaceOfInjury,  PlaceOfInjury,  PlaceOfInjury)
// * insert BundleSlice(  ActivityAtTimeOfDeath,  0, 1,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath,  ActivityAtTimeOfDeath)

Instance: CodedContentBundle-Example1
InstanceOf: CodedContentBundle
Usage: #example
Description: "CodedContentBundle-Example1"
* insert AddMetaProfile(CodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "000182"
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Outcome, Outcome-Example1)
