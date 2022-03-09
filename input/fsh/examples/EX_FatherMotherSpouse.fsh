
Instance: DecedentFather-Example1
InstanceOf: DecedentFather
Usage: #inline
Description: "DecedentFather-Example1"
* insert AddMetaProfile(DecedentFather)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Dad"


Instance: DecedentMother-Example1
InstanceOf: DecedentMother
Usage: #inline
Description: "DecedentFather-Example1"
* insert AddMetaProfile(DecedentMother)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Mom"

Instance: DecedentSpouse-Example1
InstanceOf: DecedentSpouse
Usage: #inline
Description: "DecedentSpouse-Example1"
* insert AddMetaProfile(DecedentSpouse)
* patient = Reference(Decedent-Example1)
* name.text = "Decedent Spouse"
