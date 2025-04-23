Profile: AliasParameters
Parent: Parameters
Id: VRM-AliasParameters
Title:  "Alias Message Parameters"
Description:   "Parameters for an Alias Message"
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
