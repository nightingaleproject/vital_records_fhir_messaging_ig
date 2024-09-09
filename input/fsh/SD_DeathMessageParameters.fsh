Profile:  MessageParameters
Parent: Parameters
Id: VRM-MessageParameters
Description:   "Parameter set for most Messages.  Parameters with all-caps names are defined as per the 2022 IJE specification."
Title:  "Message Parameters"
* insert RequireMetaProfile(MessageParameters)
* id MS
* insert BaseMessageParameters

/* Profile:  MessageParametersFetalDeath
Parent: Parameters
Id: VRM-MessageParametersFetalDeath
Description:   "Base parameter set for most Messages.  Parameters with all-caps names are defined as per the 2022 IJE specification."
Title:  "Death Message Parameters"
* insert RequireMetaProfile(MessageParametersFetalDeath)
* id MS
* insert BaseMessageParametersFetalDeath */

Profile: StatusParameters
Parent: Parameters
Id: VRM-StatusParameters
Title:  "Status Message Parameters"
Description:   "Parameters for a Status Message"
* insert RequireMetaProfile(StatusParameters)
* insert BaseMessageParameters
* parameter contains
    status 1..1
* insert ParameterNameType(status, string, status type,status type)
* parameter[status].valueString from StatusVS (required)

Profile: VoidParameters
Parent: Parameters
Id: VRM-VoidParameters
Title:  "Void Message Parameters"
Description:   "Parameters for a Void Message"
* insert RequireMetaProfile(VoidParameters)
* insert BaseMessageParameters
* parameter contains
    block_count 1..1
* insert ParameterNameType(block_count, unsignedInt, number of records to void, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of `1` is assumed meaning only a single record will be voided.)

Profile: AliasParameters
Parent: Parameters
Id: VRM-AliasParameters
Title:  "Alias Message Parameters"
Description:   "Parameters for an Alias Message"
* insert RequireMetaProfile(AliasParameters)
* insert BaseMessageParameters
* parameter contains   // these have no direct parallel in IJE, where they are overloaded
    alias_decedent_first_name 0..1 and  // GNAME
    alias_decedent_last_name 0..1 and   // LNAME
    alias_decedent_middle_name 0..1 and // MNAME
    alias_decedent_name_suffix 0..1 and // SUFF
    alias_father_surname 0..1 and       // FLNAME
    alias_social_security_number 0..1   // SSN
* insert ParameterNameType(alias_decedent_first_name, string, ALIAS: GNAME Decendent first name, ALIAS: Decendent first name.)
* insert ParameterNameType(alias_decedent_last_name, string, ALIAS: LNAME Decedent last Name, ALIAS: Decedent Last Name.)
* insert ParameterNameType(alias_decedent_middle_name, string, ALIAS: MNAME Decedent Middle Name, ALIAS: Decedent Middle Name.)
* insert ParameterNameType(alias_decedent_name_suffix, string, ALIAS: SUFF Decedent Name Suffix, ALIAS: Decedent Name Suffix.)
* insert ParameterNameType(alias_father_surname, string, ALIAS: FLNAME Father Surname, ALIAS: Father Surname.)
* insert ParameterNameType(alias_social_security_number, string, ALIAS: SSN Social Security Number, ALIAS: Social Security Number.)
