Instance: ParametersLinkage-LiveBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithCert"
* parameter[text_summary].valueString = "Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"


Instance: ParametersLinkage-LiveBirthWithoutCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithOutCert"
* parameter[text_summary].valueString = "Live Birth Without Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[cert_available].valueCodeableConcept = $v2-0136#N "No"

Instance: ParametersLinkage-PluralBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthWithCert"
* parameter[text_summary].valueString = "Plural Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#45384004 "Multiple birth"
* parameter[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: ParametersLinkage-EctopicPregnancy
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - EctopicPregnancy"
* parameter[text_summary].valueString = "Ectopic Pregnancy"
* parameter[coded_outcome].valueCodeableConcept = $sct#34801009 "Ectopic Pregnancy"
* parameter[cert_available].valueCodeableConcept = $v2-0136#N "No"

Instance: ParametersLinkage-PluralBirthAndFetalDeathWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert"
* parameter[text_summary].valueString = "PluralBirthAndFetalDeathWithCert"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#plural-fetal-death-and-birth "Plural Fetal Death and Birth"
* parameter[cert_available].valueCodeableConcept = $v2-0136#Y "Yes"

Instance: ParametersLinkage-FetalDeathWithCertPending
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - FetalDeathWithCertificatePending"
* parameter[text_summary].valueString = "Fetal Death"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#plural-fetal-death-and-birth
* parameter[cert_available].valueCodeableConcept = $v3-NullFlavor#NAV "temporarily unavailable"


Instance: BirthRecordIdentifierChild-Example1
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717171"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"

Instance: BirthRecordIdentifierChild-Example2
InstanceOf: BirthRecordIdentifierChild
Usage: #example
Description: "BirthRecordIdentifierChild-Example1 - identifier of the decedent's child's birth certificate number"
* status = #final
* valueString = "717172"
* component[birthJurisdiction].valueString = "YC"
* component[birthYear].valueDateTime = "2024"

Instance: FetalDeathRecordIdentifier-Example1
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record"
* status = #final
* valueString = "100001"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "2024"

Instance: FetalDeathRecordIdentifier-Example2
InstanceOf: FetalDeathRecordIdentifier
Usage: #example
Description: "FetalDeathRecordIdentifier-Example1 - identifier of the decedent's fetus's fetal death record"
* status = #final
* valueString = "100002"
* component[deathJurisdiction].valueString = "YC"
* component[year].valueDateTime = "2024"

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
* insert addentry(Parameter, ParametersLinkage-LiveBirthWithoutCert)

Instance: MaternalLinkageBundle-PluralBirthAndFetalDeathWithCert
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Plural Birth and Fetal Death with Certificate"
* identifier.value = "placeholder"
* insert addentry(Parameter, ParametersLinkage-PluralBirthAndFetalDeathWithCert)
* insert addentry(Observation, BirthRecordIdentifierChild-Example1)
* insert addentry(Observation, BirthRecordIdentifierChild-Example2)
* insert addentry(Observation, FetalDeathRecordIdentifier-Example1)
* insert addentry(Observation, FetalDeathRecordIdentifier-Example2)

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