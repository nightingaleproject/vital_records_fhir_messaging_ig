Instance: observation-input-race-and-ethnicity-mother
InstanceOf: ObservationInputRaceAndEthnicityVitalRecords
Usage: #example
Title: "Observation - InputRaceAndEthnicity example [Mother]"
Description: "Example of input-race-and-ethnicity-vr profile (Mother)"
//* insert AddMetaProfile(InputRaceAndEthnicity)
* code = CodeSystemLocalObservationsCodesVitalRecords#inputraceandethnicityMother
* status = #final
* subject.display = "EBRS-generated - mother"
* component[White].valueBoolean = false
* component[BlackOrAfricanAmerican].valueBoolean = true
* component[AmericanIndianOrAlaskanNative].valueBoolean = false
* component[AsianIndian].valueBoolean = false
* component[Chinese].valueBoolean = false
* component[Filipino].valueBoolean = false
* component[Japanese].valueBoolean = false
* component[Korean].valueBoolean = false
* component[Vietnamese].valueBoolean = false
* component[OtherAsian].valueBoolean = true
* component[NativeHawaiian].valueBoolean = false
* component[GuamanianOrChamorro].valueBoolean = false
* component[Samoan].valueBoolean = false
* component[OtherPacificIslander].valueBoolean = false
* component[OtherRace].valueBoolean = false
// * component[FirstOtherAsianLiteral].valueString = "Malaysian"
// * component[FirstAmericanIndianOrAlaskanNativeLiteral].valueString = "Arikara"
* component[HispanicMexican].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicCuban].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicPuertoRican].valueCodeableConcept = $v2-0136#N "No"
* component[HispanicOther].valueCodeableConcept = $v2-0136#Y "Yes"