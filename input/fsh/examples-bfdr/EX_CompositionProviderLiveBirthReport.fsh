Instance: composition-provider-live-birth-example1
InstanceOf: CompositionProviderLiveBirthReport
Title: "Composition - Provider Live Birth Report - BabyG Quinn"
Description: "Composition - Provider Live Birth Report: BabyG Quinn example"
Usage: #example
* extension[Extension-date-filed-by-registrar]
  * valueDateTime = "2022-08-21"
* identifier.value = "2022NJ15075"
* status = #final
* type = $loinc#68998-4 "U.S. standard certificate of live birth - 2003 revision"
* insert addReferenceComposition(subject,Patient, patient-child-baby-lee)
* date = "2022-08-20"
* insert addReferenceComposition(author, Practitioner, practitioner-vital-records-jessica-leung) 
* title = "Provider supplied live birth report Document"
* section[motherPrenatal]
  * insert addReferenceComposition(focus, Patient, patient-mother-carmen-teresa-lee)