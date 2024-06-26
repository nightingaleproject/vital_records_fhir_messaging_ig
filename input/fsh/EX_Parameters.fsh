
Instance: Parameters-Example1
InstanceOf: MessageParameters
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "VRDRSTU2.2"

Instance: ParametersFD-Example2
InstanceOf: MessageParametersFetalDeath
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 112233
* parameter[death_year].valueUnsignedInt = 2021
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "BFDRSTU1.1"

Instance: ParametersBirth-Example1
InstanceOf: MessageParametersBirth
Usage: #example
Description: "Parameters for Submission: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 111111
* parameter[birth_year].valueUnsignedInt = 2022
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[payload_version_id].valueString = "BFDRSTU2.0"

Instance: VoidParameters-Example1
InstanceOf: VoidParameters
Usage: #example
Description: "Parameters for Void: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[block_count].valueUnsignedInt = 10

Instance: StatusParameters-Example1
InstanceOf: StatusParameters
Usage: #example
Description: "Parameters for Status: Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[status].valueString = "manualCauseOfDeathCoding"

Instance: AliasParameters-Example1
InstanceOf: AliasParameters
Usage: #example
Description:  "Alias Message Parameters- Example"
* parameter[jurisdiction_id].valueString = "NY"
* parameter[cert_no].valueUnsignedInt = 123456
* parameter[death_year].valueUnsignedInt = 2018
* parameter[state_auxiliary_id].valueString = "abcdef10"
* parameter[alias_father_surname].valueString = "Jingleheimer"
* parameter[alias_decedent_first_name].valueString = "John"
* parameter[alias_decedent_middle_name].valueString = "Jacob"
* parameter[alias_decedent_last_name].valueString = "Schmidt"
* parameter[alias_decedent_name_suffix].valueString = "III"
* parameter[alias_social_security_number].valueString = "123-45-6789"
