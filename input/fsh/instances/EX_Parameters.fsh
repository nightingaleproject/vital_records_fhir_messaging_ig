
//MessageParameters

Instance: Parameters-Example1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[event_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "VRDRSTU2.2"

Instance: ParametersFD-Example2
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 112233
* parameter[event_year].valueUnsignedInt = 2021
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "BFDRSTU1.1"

Instance: ParametersBirth-Example1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 111111
* parameter[event_year].valueUnsignedInt = 2022
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "BFDRSTU2.0"

Instance: ParametersDeathExample1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 111111
//* parameter[birth_year].valueUnsignedInt = 2022
* parameter[state_auxiliary_id].valueString = "abcdef10"

//VoidParameters

Instance: VoidParameters-Example1
InstanceOf: VoidParameters
Usage: #example
Description: "Parameters for Void: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[event_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

//StatusParameters

Instance: StatusParameters-Example1
InstanceOf: StatusParameters
Usage: #example
Description: "Parameters for Status: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[event_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[status].valueString = "manualCauseOfDeathCoding"

//AliasParameters

Instance: AliasParameters-Example1
InstanceOf: AliasParameters
Usage: #example
Description:  "Alias Message Parameters- Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[event_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Jingleheimer"
* parameter[alias_decedent_first_name].valueString = "John"
* parameter[alias_decedent_middle_name].valueString = "Jacob"
* parameter[alias_decedent_last_name].valueString = "Schmidt"
* parameter[alias_decedent_name_suffix].valueString = "III"
* parameter[alias_social_security_number].valueString = "123-45-6789"

//RecentPregnancyParameters

Instance: ParametersLinkage-LiveBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithCert"
* parameter[notes].valueString = "Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0
* parameter[preg_status_is_correct].valueBoolean = true 

Instance: ParametersLinkage-LiveBirthWithoutCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithOutCert"
* parameter[notes].valueString = "Live Birth Without Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0
* parameter[preg_status_is_correct].valueBoolean = false
* parameter[corrected_pregnancy_status].valueCodeableConcept = DeathPregnancyStatusCS#4 "Not pregnant, but pregnant 43 days to 1 year before death"

Instance: ParametersLinkage-LiveBirthWithPendingCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - LiveBirthWithPendingCert"
* parameter[notes].valueString = "Live Birth With Pending Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[birth_plurality].valueInteger = 1
* parameter[fetal_death_plurality].valueInteger = 0
* parameter[preg_status_is_correct].valueBoolean = false
* parameter[corrected_pregnancy_status].valueCodeableConcept = DeathPregnancyStatusCS#4 "Not pregnant, but pregnant 43 days to 1 year before death"

Instance: ParametersLinkage-PluralBirthWithCert
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthWithCert"
* parameter[notes].valueString = "Plural Live Birth With Certificate"
* parameter[coded_outcome].valueCodeableConcept = $sct#281050002 "Livebirth"
* parameter[birth_plurality].valueInteger = 2
* parameter[fetal_death_plurality].valueInteger = 0
* parameter[preg_status_is_correct].valueBoolean = true 

Instance: ParametersLinkage-EctopicPregnancy
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - EctopicPregnancy"
* parameter[notes].valueString = "Ectopic Pregnancy"
* parameter[coded_outcome].valueCodeableConcept = $sct#34801009 "Ectopic Pregnancy"
* parameter[birth_plurality].valueInteger = 0
* parameter[fetal_death_plurality].valueInteger = 0
* parameter[preg_status_is_correct].valueBoolean = true 

Instance: ParametersLinkage-PluralBirthAndFetalDeath
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert"
* parameter[notes].valueString = "PluralBirthAndFetalDeathWithCert"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#live-birth-and-fetal-death "Multiple Outcomes (Live Birth(s) and Fetal Death(s))" 
* parameter[birth_plurality].valueInteger = 2
* parameter[fetal_death_plurality].valueInteger = 2
* parameter[preg_status_is_correct].valueBoolean = true 

Instance: ParametersLinkage-FetalDeathWithCertPending
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - FetalDeathWithCertificatePending"
* parameter[notes].valueString = "Fetal Death"
* parameter[coded_outcome].valueCodeableConcept = $sct#276507005 "Fetal Death"
* parameter[birth_plurality].valueInteger = 0
* parameter[fetal_death_plurality].valueInteger = 1
* parameter[preg_status_is_correct].valueBoolean = true 

Instance: ParametersLinkage-Extensive-PluralBirthAndFetalDeath
InstanceOf: RecentPregnancyParameters
Usage: #example
Description: "RecentPregnancyParameters - PluralBirthAndFetalDeathWithCert - extensive example"
* parameter[notes].valueString = "Example of notes"
* parameter[coded_outcome].valueCodeableConcept = CodedPregnancyStatusCS#live-birth-and-fetal-death "Multiple Outcomes (Live Birth(s) and Fetal Death(s))" 
* parameter[birth_plurality].valueInteger = 2
* parameter[fetal_death_plurality].valueInteger = 2
* parameter[preg_status_is_correct].valueBoolean = false 
* parameter[corrected_pregnancy_status].valueCodeableConcept = DeathPregnancyStatusCS#4 "Not pregnant, but pregnant 43 days to 1 year before death"