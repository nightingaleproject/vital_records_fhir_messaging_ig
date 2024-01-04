Instance: composition-coded-race-and-ethnicity-example1
InstanceOf: CompositionCodedRaceAndEthnicity
Title: "Composition - Coded Race and Ethnicity"
Description: "Composition - Coded Race and Ethnicity: example"
Usage: #example
* status = #final
* type = $loinc#86805-9 "Race and ethnicity information Document"
* date = "2021-05-20"
* author.display =  "National Center for Health Statistics"
* title = "Coded Race and Ethnicity"
* section[mother]
  * title = "Mother's Coded Race and Ethnicity"
  * focus.display = "patient-mother-carmen-teresa-lee"
  * insert addentryComposition(Observation, observation-input-race-and-ethnicity-mother)
  * insert addentryComposition(Observation, observation-coded-race-and-ethnicity-mother)