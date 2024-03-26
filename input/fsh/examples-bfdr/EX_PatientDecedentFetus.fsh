Instance: patient-decedent-fetus-not-named
InstanceOf: PatientDecedentFetus
Title: "Patient - Decedent Fetus example"
Description: "Example of Patient-decedent-fetus profile"
Usage: #example
// * extension[fetalDeath]
//   * valueCoding = $sct#276507005
//   * url = "http://hl7.org/fhir/us/vr-common-library/StructureDefinition/Extension-patient-fetal-death-vr"
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
// NOTE TODO: name.use is a required element and the child is unnamed
// want to confirm this is the appropriate code
* name[currentLegalName]
  * family //= "Lee"
    * extension[dataAbsentReason] //.valueCode = #not-applicable
      * url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
      * valueCode = #not-applicable
* gender = #female
* birthDate = "2021-05-20"
//   * extension
//     * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
//     * valueDateTime = "2021-05-20T18:23:00-07:00"
* deceasedBoolean = true