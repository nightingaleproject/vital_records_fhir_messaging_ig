Instance: bundle-coded-cause-of-fetal-death-example1
InstanceOf: CodedCauseOfFetalDeathBundleBFDR
Title: "Bundle - Coded Cause of Fetal Death"
Description: "Bundle - Coded Cause of Fetal Death"
Usage: #example 
* identifier.value = "2021NJ15075"
* identifier.system = Canonical(CodeSystemIJEVitalRecords)
* identifier.extension[certificateNumber].valueString = "15075"
* timestamp = "2021-05-20T08:51:14.637+00:00"
* insert addentry(Composition, composition-coded-cause-of-fetal-death-example1)
* insert addentry(Observation, observation-coded-initiating-fetal-death-cause-or-condition)