Instance: composition-provider-fetal-death-example1
InstanceOf: CompositionProviderFetalDeathReport
Title: "Composition - Provider Fetal Death Report - Fetus"
Description: "Composition - Provider Fetal Death Report: Fetus Example"
Usage: #example
* extension[Extension-date-received-by-registrar]
  * valueDateTime = "2021-05-28"
* status = #final
* type = $loinc#69045-3 "U.S. standard report of fetal death - 2003 revision"
* insert addReferenceComposition(subject,Patient, patient-decedent-fetus-not-named)
* insert addReferenceComposition(author, Practitioner, practitioner-vital-records-jessica-leung)
* date = "2021-05-20"
* title = "Provider fetal death report Document"
* section[motherPrenatal]
  * insert addReferenceComposition(focus, Patient, patient-mother-carmen-teresa-lee)