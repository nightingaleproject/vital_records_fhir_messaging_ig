//BirthRecordIdentifiers

Instance: BirthRecordIdentifierChild-Example1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"
* component[index].valueInteger = 1
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: BirthRecordIdentifierChildNoCert-Example1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChildNoCert-Example1 - identifier of the decedent's child's birth certificate number"
* status = #final
* component[index].valueInteger = 1
* component[cert_available].valueCodeableConcept = $v2-0136#N "No"

Instance: BirthRecordIdentifierChild-Example2
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717172"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"
* component[index].valueInteger = 2
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: BirthRecordIdentifierChild-ExtensiveExample1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-ExtensiveExample - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"
* component[index].valueInteger = 1
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: BirthRecordIdentifierChild-ExtensiveExample2
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-ExtensiveExample1 - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717172"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"
* component[index].valueInteger = 2
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

//FetalDeathRecordIdentifiers

Instance: FetalDeathRecordIdentifier-Example1
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record"
* status = #final
* valueString = "100001"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "2024"
* component[index].valueInteger = 1
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: FetalDeathRecordIdentifier-Example2
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record"
* status = #final
* valueString = "100002"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "2024"
* component[index].valueInteger = 2
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: FetalDeathRecordIdentifierNoCert-Example3
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifierNoCert-Example3 - missing identifier of the decedent's fetus's fetal death record"
* status = #final
* component[cert_available].valueCodeableConcept = $v2-0136#N "No"
* component[index].valueInteger = 2

Instance: FetalDeathRecordIdentifierNoCert-Example4
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifierNoCert-Example4 - certificate pending"
* status = #final
* component[cert_available].valueCodeableConcept = $v3-NullFlavor#NAV "Temporarily unavailable"
* component[index].valueInteger = 1

Instance: FetalDeathRecordIdentifier-ExtensiveExample1
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record"
* status = #final
* valueString = "100001"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "2024"
* component[index].valueInteger = 1
* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: FetalDeathRecordIdentifier-ExtesnvieExample2
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-ExtensiveExample1 - identifier of the decedent's fetus's fetal death record, certificate not available"
* status = #final
* component[index].valueInteger = 2
* component[cert_available].valueCodeableConcept = $v2-0136#N "No"