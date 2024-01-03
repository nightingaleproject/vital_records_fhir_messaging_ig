Instance: composition-coded-race-and-ethnicity-example1
InstanceOf: CompositionCodedRaceAndEthnicity
Title: "Composition - Coded Race and Ethnicity"
Description: "Composition - Coded Race and Ethnicity: example"
Usage: #example
// * identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27dc"
// * extension[Extension-live-birth-certificate-number]
//   * valueIdentifier
//     * type = $v2-0203#BCT
//     * value = "12345"
* status = #final
* type = $loinc#86805-9 "Race and ethnicity information Document"
// * subject.display = "Patient - Child"
* date = "2019-01-09"
* author.display =  "National Center for Health Statistics"
* title = "Coded Race and Ethnicity"
* section[mother]
  * title = "Mother's Coded Race and Ethnicity"
  * emptyReason = $emptyReason#unavailable