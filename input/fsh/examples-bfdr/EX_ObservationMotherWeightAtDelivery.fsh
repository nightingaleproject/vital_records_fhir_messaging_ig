Instance: observation-mother-delivery-weight-carmen-teresa-lee
InstanceOf: ObservationMotherDeliveryWeight
Title: "Observation - Mother Delivery Weight - Carmen Teresa Lee"
Description: "Observation - Mother Delivery Weight: Carmen Teresa Lee example"
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#69461-2 "Mother's body weight --at delivery"
* subject = Reference(patient-mother-carmen-teresa-lee) "Patient - Mother (Carmen Teresa Lee)"
* effectiveDateTime = "2021-05-20"
* performer = Reference(practitioner-vital-records-jessica-leung)
* valueQuantity = 175 '[lb_av]'