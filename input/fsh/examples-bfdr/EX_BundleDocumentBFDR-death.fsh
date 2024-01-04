Instance: bundle-provider-fetal-death-example1
InstanceOf: BundleDocumentBFDR
Title: "Bundle - Provider Fetal Death Report - Fetus"
Description: "Bundle - Provider Fetal Death Report: Fetus example"
Usage: #example
//   * system = "urn:ietf:rfc:3986"
//   * value = "urn:uuid:93bdc9cf-0d97-4b6f-9f11-876d8ea115eb"
* type = #document
* timestamp = "2021-02-11T02:06:01.283Z"
* identifier.system = Canonical(CodeSystemIJEVitalRecords)
* identifier.value = "2021NJ15075"
* insert addentry(Composition, composition-provider-fetal-death-example1)
* insert addentry(Patient, patient-mother-carmen-teresa-lee)
* insert addentry(Patient, patient-decedent-fetus-not-named)
* insert addentry(Practitioner, practitioner-vital-records-jessica-leung)
* insert addentry(Observation, observation-mother-height-carmen-teresa-lee)
* insert addentry(Condition, condition-fetal-death-cause-or-condition-not-named)
