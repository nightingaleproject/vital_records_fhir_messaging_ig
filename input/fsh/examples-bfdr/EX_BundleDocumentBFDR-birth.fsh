Instance: bundle-provider-live-birth-example1
InstanceOf: BundleDocumentBirthReport
Title: "Bundle - Provider Live Birth Report - Fetus"
Description: "Bundle - Provider Live Birth Report: Fetus example"
Usage: #example
* identifier.system = Canonical(CodeSystemIJEVitalRecords)
* identifier.extension[birthCertificateNumber].valueString = "15076"
* identifier.value = "2022NJ15076"
* timestamp = "2022-05-20T02:06:01.283Z"
* type = #document
* insert addentry(Composition, composition-provider-live-birth-example1)
* insert addentry(Patient, patient-mother-carmen-teresa-lee)
* insert addentry(Patient, patient-child-baby-lee)
* insert addentry(Practitioner, practitioner-vital-records-jessica-leung)
* insert addentry(Observation, observation-mother-height-carmen-teresa-lee)
* insert addentry(Observation, observation-mother-delivery-weight-carmen-teresa-lee)
* insert addentry(Observation, observation-input-race-and-ethnicity-mother)