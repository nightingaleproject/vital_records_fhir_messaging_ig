Profile: FetalDeathRecordIdentifier
Parent: Observation
Id: VRM-fetal-death-record-identifier
Title: "Fetal Death Record Identifier"
Description: "Fetal Death Record Identifier (Observation).  For use in Maternal Death. This includes the fetal death record identifier, the jurisdiction, and the birth year.
The subject is implicitly the Decedent (mother), whose death was related to the fetal death referenced by the identifier."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = ObservationCS#fetaldeathrecordidentifier 
  * ^short = "Fetal Death Record Number"
* focus 0..0
* insert RecordIdentifierObservation (Fetal Death, $loinc#81954-0, deathJurisdiction, $loinc#77969-4, year )  // date of death






