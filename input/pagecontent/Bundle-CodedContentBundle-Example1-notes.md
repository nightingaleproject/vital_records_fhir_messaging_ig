```
Instance: CodedContentBundle-Example1
InstanceOf: Bundle
Usage: #example
* meta.profile = "http://hl7.org/fhir/us/vrdr/StructureDefinition/vrdr-coded-content-bundle"
* identifier.extension[0].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier1"
* identifier.extension[=].valueString = "000000000001"
* identifier.extension[+].url = "http://hl7.org/fhir/us/vrdr/StructureDefinition/AuxiliaryStateIdentifier2"
* identifier.extension[=].valueString = "100000000001"
* identifier.system = "http://nchs.cdc.gov/vrdr_id"
* identifier.value = "000182"
* type = #collection
* timestamp = "2020-10-20T14:48:35.401641-04:00"
* entry[0].fullUrl = "http://www.example.org/fhir/Observation/ActivityAtTimeOfDeath-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-1
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/CodedRaceAndEthnicity-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-2
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/ManualUnderlyingCauseOfDeath-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-3
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/AutomatedUnderlyingCauseOfDeath-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-4
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/RecordAxisCauseOfDeath-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-5
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/EntityAxisCauseOfDeath-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-6
* entry[+].fullUrl = "http://www.example.org/fhir/Observation/PlaceOfInjury-Example1"
* entry[=].resource = Inline-Instance-for-CodedContentBundle-Example1-7
* entry[+].fullUrl = "http://www.example.org/fhir/Parameter/CodingStatusValues-Example1"
* entry[=].resource = CodingStatusValues-Example1
```