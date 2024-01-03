Instance: patient-mother-carmen-teresa-lee
InstanceOf: PatientMotherVitalRecords
Title: "Patient - Mother example [Carmen Teresa Lee]"
Description: "Example of Patient-mother-vr profile (Carmen Teresa Lee)"
Usage: #example
* identifier
  * use = #usual
  * type = $v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "9992702"
* name[0]
  * use = #official
  * family = "Lee"
  * given[0] = "Carmen"
  * given[+] = "Teresa"
* name[+]
  * use = #maiden
  * family = "Santos"
  * given[0] = "Carmen"
  * given[+] = "Teresa"
* gender = #female
* birthDate = "1986-02-15"