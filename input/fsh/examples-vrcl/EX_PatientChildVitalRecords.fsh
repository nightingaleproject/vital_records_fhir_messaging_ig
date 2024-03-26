Instance: patient-child-baby-lee
InstanceOf: PatientChildVitalRecords
Title: "Patient - Child example"
Description: "Example of Patient-child-vr profile"
Usage: #example
* extension[birthsex]
  * valueCode = #F
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9932702"
// NOTE TODO: this was marked usual, but could be marked official?
* name[currentLegalName]
  * family = "Lee"
  * given[0] = "Baby"
  * given[1] = "G"
* gender = #female
* multipleBirthInteger = 1
* birthDate = "2022-08-20"
  * extension
    * url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
    * valueDateTime = "2019-02-12T13:00:00-07:00"