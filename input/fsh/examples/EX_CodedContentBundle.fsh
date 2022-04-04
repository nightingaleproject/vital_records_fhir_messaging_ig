Instance: CodedContentBundle-Example1
InstanceOf: CodedContentBundle
Usage: #example
Description: "CodedContentBundle-Example1"
* insert AddMetaProfile(CodedContentBundle)
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "000182"
* identifier.extension[auxiliaryStateIdentifier1].valueString = "000000000001"
* identifier.extension[auxiliaryStateIdentifier2].valueString = "100000000001"
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* insert addentry(Observation, ActivityAtTimeOfDeath-Example1)

Instance: ActivityAtTimeOfDeath-Example1
InstanceOf: ActivityAtTimeOfDeath
Usage: #inline
Description: "ActivityAtTimeOfDeath-Example1"
* insert AddMetaProfile(ActivityAtTimeOfDeath)
* status = #final
* subject.display = "NCHS generated"
* valueCodeableConcept = ActivityAtTimeOfDeathCS#1 "While engaged in leisure activities."