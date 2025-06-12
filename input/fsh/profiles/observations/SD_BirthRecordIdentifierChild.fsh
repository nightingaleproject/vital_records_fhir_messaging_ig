Profile: BirthRecordIdentifierChild
Parent: Observation
Id: VRM-birth-record-identifier-child
Title: "Birth Record Identifier Child"
Description: "Birth Record Identifier (Observation). For use in Maternal Death. This includes the record identifier, the jurisdiction, and the birth year of a child.
The subject is implicitly the Decedent (mother), whose death was related to the to the birth referenced by the identifier."
* status 1..1
* status = #final (exactly)
* code 1..1
* code only CodeableConcept
* code = ObservationCS#birthrecordidentifier
  * ^short = "Child's Birth registry number"
* focus 0..0
* insert RecordIdentifierObservation (Child's Birth, $loinc#80904-6, birthJurisdiction, $loinc#21842-0, birthYear )  // birth year