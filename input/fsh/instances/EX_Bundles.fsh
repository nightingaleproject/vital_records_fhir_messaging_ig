Instance: DummyDeathBundle
InstanceOf: MessageBundle
Usage: #example 
Description:  "Placeholder for death record"
* type = #collection 
* insert addentry(Parameters, ParametersDeathExample1)

Instance: DummyBundle
InstanceOf: MessageBundle
Usage: #example 
Description:  "Placeholder for all content sent in messages"
* type = #collection 
* insert addentry(Parameters, ParametersBirth-Example1)

//MaternalLinkageContentBundles

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

Instance: MaternalLinkageBundle-FetalDeathWithCertPending
InstanceOf: MaternalLinkageContentBundle
Usage: #example
Description: "MaternalLinkageContentBundle-Fetal Death with Cert Pending"
* identifier.value = "placeholder"
* insert addentry(Parameter,ParametersLinkage-FetalDeathWithCertPending)
* insert addentry(Observation, FetalDeathRecordIdentifierNoCert-Example4)