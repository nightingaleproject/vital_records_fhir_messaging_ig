Instance: DecedentEducationLevel-Example1
InstanceOf: DecedentEducationLevel
Usage: #inline
Description: "DeathDate-Example1"
* insert AddMetaProfile(DecedentEducationLevel)
* subject = Reference(Decedent-Example1)
* status = #final
* valueCodeableConcept = $v3-EducationLevel#SEC "Some secondary or high school education"
* valueCodeableConcept.text = "11th grade"
