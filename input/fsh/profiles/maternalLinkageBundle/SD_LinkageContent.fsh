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

CodeSystem: ObservationCS
Id: VRM-observation-cs
Title: "Local Observation Identifiers"
Description: "Codesystem for local observation identifiers."
* ^caseSensitive = true
* #fetaldeathrecordidentifier  "Fetal Death Record Identifier" "Fetal Death Record Identifier"
* #birthrecordidentifier  "Birth Record Record Identifier" "Birth Record Identifier"
* ^experimental = false

RuleSet: RecordIdentifierObservation (type, code, jurisdiction, jurisdictionCode, year )
* value[x] 1..1
* value[x] only string   // we considered shifting to integer and kept it as string.
* valueString ^short = "{type} Record number.  Six digit number.  Leading zeroes are optional."
* valueString ^maxLength = 6
// * dataAbsentReason 0..1
// * dataAbsentReason from DataAbsentReason (extensible)
* component ..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    {jurisdiction} 1..1 and
    {year} 1..1
* component[{jurisdiction}] ^short = "Record Jurisdiction"
* component[{jurisdiction}].code 1..1
* component[{jurisdiction}].code = {jurisdictionCode}  // "Jurisdiction Code"
* component[{jurisdiction}].value[x] 1..1
* component[{jurisdiction}].value[x] only string
* component[{jurisdiction}].valueString from ValueSetJurisdictionVitalRecords (required)
* component[{year}] ^short = "Year of {type}"
* component[{year}].code = {code} // "Date of Death/Birth"
* component[{year}].value[x] 1..1
* component[{year}].value[x] only dateTime
* component[{year}].value[x] ^comment = "The record year is expressed using the YYYY portion of date."

