Profile:  MessageParameters
Parent: Parameters
Id: VRM-MessageParameters
Description:   "Base parameter set for most Messages.  Parameters with all-caps names are defined as per the 2022 IJE specification."
Title:  "Death Message Parameters"
* id MS
// jurisdiction_id
// cert_no
// death_year
// state_auxiliary_id
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.description = "Slicing based on the profile conformance of the sliced element"
* parameter contains
    jurisdiction_id 0..1 and
    cert_no 0..1 and   // cert_no / FILENO
    death_year 0..1 and   // death_year / DOD_YR
    state_auxiliary_id  0..1    // state_auxiliary_id / AUXNO
* insert ParameterNameType(jurisdiction_id, string, jurisdiction identifier, 2 character identifier for one of 57 reporting jurisdictions)
* parameter[jurisdiction_id].value[x] from VRDRJurisdictionVS (required)
* insert ParameterNameType(cert_no, unsignedInt,FILENO death certificate number , death certificate number ) // parameter[cert_no].name = "cert_no"
* insert ParameterNameType(death_year, unsignedInt, DOD_YR death year, four digit death year) //* parameter[death_year].name = "death_year"
* insert ParameterNameType(state_auxiliary_id, string, AUXNO state auxiliary identifier, state auxiliary identifier) // * parameter[state_auxiliary_id].name = "state_auxiliary_id"


Profile: VoidParameters
Parent: MessageParameters
Id: VRM-VoidParameters
Title:  "Void Message Parameters"
Description:   "Parameters for a Void Message"
* parameter contains
    block_count 1..1
* insert ParameterNameType(block_count, unsignedInt, number of records to void, the number of records to void starting at the certificate number specified by the `cert_no` parameter. If not present a default value of `1` is assumed meaning only a single record will be voided.)

Profile: AliasParameters
Parent: MessageParameters
Id: VRM-AliasParameters
Title:  "Alias Message Parameters"
Description:   "Parameters for an Alias Message"
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

RuleSet: BasicParameters
* parameter contains
    R_YR 0..1 and           //rec_yr
    R_MO 0..1 and          //rec_mo
    R_DY 0..1 and          //rec_dy
    CS 0..1 and    // cs - coder status
    SHIP 0..1 and // ship - shipment number
    SYS_REJ 0..1 and // sys_rej ACME system reject codes
    INT_REJ 0..1   // int_rej intentional reject, one character reject code --  1, 2, 3, 4, 5, 9
* insert ParameterNameType(R_YR, unsignedInt, R_YR the year that NCHS received the record ,the year that NCHS received the record )
* insert ParameterNameType(R_MO, unsignedInt, R_MO the month that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(R_DY, unsignedInt, R_DY the day that NCHS received the record, the month that NCHS received the record)
* insert ParameterNameType(CS, unsignedInt, CS ACMETRANSAX Coding Status 0-9 ,ACMETRANSAX Coding Status )
* insert ParameterNameType(SHIP, string, SHIP Needed? NCHS Shipment Number - 3 character, AlphaNumeric NCHS shipment number. Usually the month of death or month of receipts)
* insert ParameterNameType(SYS_REJ, unsignedInt, SYS_REJ system reject code 0-4, system reject code)
* insert ParameterNameType(INT_REJ, unsignedInt, INT_REJ internal reject code 1-5 or 9, internal reject code)
* parameter[SHIP].value[x] ^maxLength = 3
