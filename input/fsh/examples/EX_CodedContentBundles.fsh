
Instance: CauseOfDeathCodedContentBundle-Example1
InstanceOf: CauseOfDeathCodedContentBundle
Usage: #example
Description: "CauseofDeathCodedContentBundle-Example1"
* insert AddMetaProfile(CauseOfDeathCodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* timestamp = "2020-10-20T14:48:35.401641-04:00"
// * insert addentry(Observation, ActivityAtTimeOfDeath-Example1)
// * insert addentry(Observation, ManualUnderlyingCauseOfDeath-Example1)
// * insert addentry(Observation, AutomatedUnderlyingCauseOfDeath-Example1)
// * insert addentry(Observation, RecordAxisCauseOfDeath-Example1)
// * insert addentry(Observation, EntityAxisCauseOfDeath-Example1)
// * insert addentry(Observation, EntityAxisCauseOfDeath-Example2)
// * insert addentry(Observation, EntityAxisCauseOfDeath-Example3)
// * insert addentry(Observation, EntityAxisCauseOfDeath-Example4)
// * insert addentry(Observation, PlaceOfInjury-Example1)
// * insert addentry(Parameter, CodingStatusValues-Example1)
// // Input Data
// * insert addentry(Observation, DecedentPregnancyStatus-Example1)
// * insert addentry(Observation, TobaccoUseContributedToDeath-Example1)
// * insert addentry(Observation, SurgeryDate-Example1)
// * insert addentry(Observation, MannerOfDeath-Example1)
// * insert addentry(Observation, InjuryIncident-Example1)
// * insert addentry(Procedure, DeathCertification-Example2)
// * insert addentry(Observation, CauseOfDeathPart1-Example1)
// * insert addentry(Observation, CauseOfDeathPart1-Example2)
// * insert addentry(Observation, CauseOfDeathPart2-Example1)
// // * insert addentry(List, CauseOfDeathPathway-Example1)
// * insert addentry(Observation, AutopsyPerformedIndicator-Example1)


Instance: DemographicCodedContentBundle-Example1
InstanceOf: DemographicCodedContentBundle
Usage: #example
Description: "DemographicCodedContentBundle-Example1"
* insert AddMetaProfile(DemographicCodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* timestamp = "2020-10-20T14:48:35.401641-04:00"
// * insert addentry(Observation, InputRaceAndEthnicity-Example1)
// // Input Data
// * insert addentry(Observation, CodedRaceAndEthnicity-Example1)


Instance: IndustryOccupationCodedContentBundle-Example1
InstanceOf: IndustryOccupationCodedContentBundle
Usage: #example
Description: "IndustryOccupationCodedContentBundle-Example1"
* insert AddMetaProfile(IndustryOccupationCodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* insert Identifiers2020NY000182
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Observation, DecedentUsualWork-Example2)

Instance: DecedentUsualWork-Example2
InstanceOf: DecedentUsualWork
Usage: #example
Description: "DecedentUsualWork-Example2 - with coded values"
* insert AddMetaProfile(DecedentUsualWork)
* status = #final
* subject = Reference(Decedent-Example1)
//* valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* valueCodeableConcept.text = "secretary"
//* component.code = $loinc#21844-6 "History of Usual industry"
//* component.valueCodeableConcept.coding = $v3-NullFlavor#UNK "unknown"
* component[odh-UsualIndustry].valueCodeableConcept.text = "State agency"
//* effectivePeriod.start = "2001"
//* effectivePeriod.end = "2005"

