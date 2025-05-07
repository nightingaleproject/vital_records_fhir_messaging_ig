Instance: ParametersLinkage-LiveBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithCert"
* parameter[notes].valueString = "Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0



Instance: ParametersLinkage-LiveBirthWithoutCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithOutCert"
* parameter[notes].valueString = "Live Birth Without Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
// * component[cert_available].valueCodeableConcept = $v2-0136#N "No"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0

Instance: ParametersLinkage-LiveBirthWithPendingCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithPendingCert"
* parameter[notes].valueString = "Live Birth With Pending Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
//* component[cert_available].valueCodeableConcept = $v3-NullFlavor#NAV "Temporarily unavailable"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0

Instance: ParametersLinkage-PluralBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthWithCert"
* parameter[notes].valueString = "Plural Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#45384004 "Multiple birth"
// * component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"
* parameter[birth_plurality].valueInteger = 2
* parameter[fetal_death_plurality].valueInteger = 0

Instance: ParametersLinkage-EctopicPregnancy
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - EctopicPregnancy"
* parameter[notes].valueString = "Ectopic Pregnancy"
* parameter[coded_outcome].valueCodeableConcept = $sct#34801009 "Ectopic Pregnancy"
//* component[cert_available].valueCodeableConcept = $v2-0136#N "No"
* parameter[birth_plurality].valueInteger = 0
* parameter[fetal_death_plurality].valueInteger = 0

Instance: ParametersLinkage-PluralBirthAndFetalDeath
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert"
* parameter[notes].valueString = "PluralBirthAndFetalDeathWithCert"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#plural-fetal-death-and-birth "Plural Fetal Death and Birth"
* parameter[birth_plurality].valueInteger = 2
* parameter[fetal_death_plurality].valueInteger = 2
//* component[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: ParametersLinkage-FetalDeathWithCertPending
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - FetalDeathWithCertificatePending"
* parameter[notes].valueString = "Fetal Death"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#plural-fetal-death-and-birth
//* component[cert_available].valueCodeableConcept = $v3-NullFlavor#NAV "temporarily unavailable"
* parameter[birth_plurality].valueInteger = 0
* parameter[fetal_death_plurality].valueInteger = 1

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

Instance: MaternalLinkageBundle-Birth
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Birth"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-LiveBirthWithCert)
* insert addentry(Observation, BirthRecordIdentifierChild-Example1)

Instance: MaternalLinkageBundle-BirthNoCert
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Birth with no certificate"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-LiveBirthWithCert)
* insert addentry(Observation, BirthRecordIdentifierChildNoCert-Example1)

Instance: MaternalLinkageBundle-BirthPendingCert
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Birth with pending certificate"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-LiveBirthWithCert)
* insert addentry(Observation, BirthRecordIdentifierChildNoCert-Example1)

Instance: MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Plural Birth and Fetal Death with and without Certificates"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-PluralBirthAndFetalDeath)
* insert addentry(Observation, BirthRecordIdentifierChild-Example1)
* insert addentry(Observation, BirthRecordIdentifierChild-Example2)
* insert addentry(Observation, FetalDeathRecordIdentifier-Example1)
* insert addentry(Observation, FetalDeathRecordIdentifierNoCert-Example3)

Instance: MaternalLinkageBundle-PluralBirthWithCert
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Pural Birth with certificate"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-PluralBirthWithCert)
* insert addentry(Observation, BirthRecordIdentifierChild-Example1)
* insert addentry(Observation, BirthRecordIdentifierChild-Example2)

Instance: MaternalLinkageBundle-EctopicPregnancy
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Ectopic Pregnancy"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-EctopicPregnancy)