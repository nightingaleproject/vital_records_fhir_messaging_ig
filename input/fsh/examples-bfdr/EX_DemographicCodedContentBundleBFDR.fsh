Instance: bundle-coded-race-and-ethnicity-example1
InstanceOf: DemographicCodedContentBundleBFDR
Title: "Bundle - Coded Race and Ethnicity"
Description: "Bundle - Coded Race and Ethnicity - example 1"
Usage: #example 
* identifier.value = "2022NJ15076"
* identifier.system = Canonical($IJE)
* identifier.extension[certificateNumber].valueString = "15076"
* timestamp = "2022-08-20T08:51:14.637+00:00"
* insert addentry(Composition, composition-coded-race-and-ethnicity-example1)
* insert addentry(Observation, observation-input-race-and-ethnicity-mother)
* insert addentry(Observation, observation-coded-race-and-ethnicity-mother)